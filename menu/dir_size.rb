class DirSize
  def self.menu(*args)
    ppp = "- TODO: make args work! (Args -> #{args.inspect})"
    dir = args.empty? ? "/home/fedex/" : "/" + args.join("/") + "/"
    out = `du -chs /home/fedex/*`
    out = out.split("\n")

    #dir + "\n" + ppp + "\n" + 
    out.map {|l| "| #{l}"}.join("\n")
  end
end
