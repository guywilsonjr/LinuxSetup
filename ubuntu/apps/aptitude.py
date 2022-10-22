import apt

cache = apt.cache.Cache()
cache.update()
cache.open()
pkg = cache['git-doc']
pkg.mark_install()
cache.commit()