class List

  def initialize(description)
    @list_name = description
    @tasks = []
  end

  def the_tasks
    @tasks
  end

  def add_task(new_task)
    @tasks << new_task
  end

  def description
    @list_name
  end

end
