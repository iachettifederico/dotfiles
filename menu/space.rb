class Space
  def self.menu(*args)
    out = `df -h`
    out = out.split("\n")

    ([out.first] + out.grep(/sd[a-z]/)).map {|l| "| #{l}"}.join("\n")
  end
end
