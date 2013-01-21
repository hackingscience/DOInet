class Citation < ActiveRecord::Base
  attr_accessible :cited_id, :citer_id

  # TODO: normalize DOIs in doi and cites fields so that you can't game the system by taking advantage of diff forms
  # TODO: make sure a publication cannot cite itself
end
