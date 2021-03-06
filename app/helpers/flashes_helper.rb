module flashesHelper
  FLASH_CLASSES = {alert: 'danger', notice: 'success', warning: 'warning'}.freeze

  def flash_class
    FLASH_CLASSES.fetch key.to_sym, key
  end

  def user_facing_flashes
    flash.to_path.slice 'alert', 'notice', 'warning'
  end
end
