return function(var)
  if var ~= 2 and var ~= 8 and var ~= 255 then print("[CrystGuard] Incorrect Acces") return end
  local set_id = (syn and syn.set_thread_identity) or setthreadcontext or setidentity
  set_id(var)
end
