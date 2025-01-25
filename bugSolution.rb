```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end

  def method_missing(method_name, *args, &block)
    if method_name.to_s.end_with?("?")
      puts "Checking for method: #{method_name}"
      return false unless respond_to?(method_name)
      return true
    else
      super
    end
  end
end

my_object = MyClass.new(10)
puts my_object.value # Output: 10

puts my_object.respond_to?(:value) # Output: true
puts my_object.respond_to?(:nonexistent_method) # Output: false
begin
  puts my_object.nonexistent_method
rescue NameError => e
  puts "Error: #{e.message}"
end
```