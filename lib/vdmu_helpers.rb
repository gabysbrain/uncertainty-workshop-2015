
module VdmuHelpers
  def _decode_link(name, base)
    if name.start_with? "http://", "/"
      name
    else
      base + "/" + name
    end
  end

  def slide_link(name)
    link_to 'slides', _decode_link(name, "slides"), {:class => 'slide-link'}
  end

  def submission_link(name)
    link_to 'submission', _decode_link(name, "submissions"), {:class => 'submission-link'}
  end
end

