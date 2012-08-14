require 'spec_helper'

shared_examples 'composable' do
  it { should respond_to :to_proc}
  it { should respond_to :>> }
  it { should respond_to :<< }
  it { should respond_to :compose }

  let(:g) { lambda{|x| x * 2 } }

  it('" f >> g" returns g(f)'){ (subject >> g).should be_a_kind_of Proc }
  it('"(f >> g).call(x)" should be g(f(x))'){
    (subject >> g).call(:foo).should == g.call(subject.to_proc.call(:foo)) }

  it('" f << g" returns g(f)'){ (subject << g).should be_a_kind_of Proc }
  it('"(f << g).call(x)" should be f(g(x))'){
    (subject << g).call(12).should == subject.to_proc.call(g.call(12)) }
end
