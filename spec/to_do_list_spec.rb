require 'rspec'
require 'list'
require 'task'

describe(List) do
  it('starts with an empty list') do
    test_list = List.new('School Supplies')
    expect(test_list).to be_an_instance_of List
  end
  it('can add a task') do
    test_list = List.new('School Supplies')
    test_task = Task.new('Get pencils')
    test_list.add_task(test_task)
    expect(test_list.the_tasks).to eq [test_task]
  end
end
