return {
  summary = 'Set whether or not the Source is relative.',
  description = [[
    Sets whether or not the Source is relative to the listener.  If a Source is relative then its
    position, velocity, cone, and direction are all relative to the audio listener.
  ]],
  arguments = {
    {
      name = 'relative',
      type = 'boolean',
      description = 'Whether or not the Source is relative.'
    }
  },
  returns = {}
}
