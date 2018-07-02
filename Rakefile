task :default => :run_all

task :run_all do
  `git log --reverse --pretty="format:%H"`.lines.map(&:chomp).each do |sha|
    system "git checkout -q #{sha}"

    next unless File.file? "mondrian.rb"

    puts
    puts "#" * 78
    puts `git show -s --pretty=short #{sha}`.gsub(/^/, "# ")
    puts
    puts File.read "mondrian.rb"
    puts

    sh "rsdl mondrian.rb"
  end

ensure
  system "git checkout -q master"
end
