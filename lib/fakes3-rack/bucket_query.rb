module FakeS3Rack
  class BucketQuery
    attr_accessor :prefix,:matches,:marker,:max_keys,
                  :delimiter,:bucket,:is_truncated

    # Syntactic sugar
    def is_truncated?
      @is_truncated
    end
  end
end
