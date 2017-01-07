module AdapterModule
  def adapter=(adapter)
    @adapter = Animals::const_get(adapter.to_s.capitalize)
  end

  def adapter
    @adapter ||= :dog
  end
end