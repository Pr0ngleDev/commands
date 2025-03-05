require "./spec_helper"

describe Commands do

  it "executes command and returns output" do
    output = Commands.executeCommand("echo Hello world")
    output.should eq("Hello world")
  end

  it "executes process and returns exit status" do
    status = Commands.executeProcess("echo Hello world")
    status.should eq("0")
  end   
end


