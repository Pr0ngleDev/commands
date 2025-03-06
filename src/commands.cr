require "process"
module Commands
  VERSION = "1.0.0"
  def self.executeCommand(c : String)
    Process.run(command: "bash") do |s|
      i = s.input
      o = s.output
      i.puts c
      output = o.gets
      return output.nil? ? "" : output
    end
  end

  def self.executeProcess(c : String)
    Process.run(command: "bash") do |s|
      i = s.input
      i.puts c
      i.close
    end
    Process.run(command: "bash") do |s|
      i = s.input
      o = s.output
      i.puts "echo $?"
      return o.gets
      i.close
      o.close
    end
  end
  # TODO: Put your code here
end
