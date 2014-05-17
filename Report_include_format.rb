class Report
  def initialize
    @title = 'Monthly Report'
	@text = ['Things are going','really,really well.']
  end
  
  def output_report(format)
    if format == :plain
      puts("***#{@title}***")
    elsif format == :html
      puts('<html>')
	puts('  <head>')
	puts('    <title>#{@title}</title>')
	puts('  </head>')
	puts('  <body>')
    else
      raise "Unknow format: #{format}"
  end

  @text.eacho do |line|
    if format == :plain
      puts(line)
    else
      puts("  <p>#{line}</p>")
    end
  end

  if format == :html
    puts('</body>')
    puts('</html>')
  end

end


my_report = Report.new
my_report.output_report

