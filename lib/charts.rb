require 'lazy_high_charts'

include LazyHighCharts::LayoutHelper

def simplecov_chart(app)
  LazyHighCharts::HighChart.new('graph') do |f|
    f.yAxis({:title => {:text => "SimpleCov %"}})
    f.xAxis(
      {
        :title => {:text => "Date"},
        :categories => Report.dates_for(app)
      }
    )
    # f.title({ :text => "#{app} SimpleCov Chart"})
    f.series(:type => 'line', :name => app, :data => Report.simplecov_stats(app) )
  end
end

def rubocop_chart(app)
  LazyHighCharts::HighChart.new('graph') do |f|
    f.yAxis({:title => {:text => "Rubocop Offenses"}})
    f.xAxis(
      {
        :title => {:text => "Date"},
        :categories => Report.dates_for(app)
      }
    )
    # f.title({ :text => "#{app} Rubocop Chart"})
    f.series(:type => 'line', :name => app, :data => Report.rubocop_stats(app) )
  end
end

%w(Nemo Lenny Holmes Manisero Panda).each do |name|
  define_method("#{name.downcase}_rubocop_chart") do
    rubocop_chart(name)
  end

  define_method("#{name.downcase}_simplecov_chart") do
    simplecov_chart(name)
  end
end
