return {
  summary = 'Mount a directory or archive.',
  description = [[
    Mounts a directory or `.zip` archive, adding it to the virtual filesystem.  This
    allows you to read files from it.
  ]],
  arguments = {
    {
      name = 'path',
      type = 'string',
      description = 'The path to mount.'
    },
    {
      name = 'mountpoint',
      type = 'string',
      default = [['/']],
      description = 'The path in the virtual filesystem to mount to.'
    },
    {
      name = 'append',
      type = 'boolean',
      default = 'false',
      description = [[
        Whether the archive will be added to the end or the beginning of the search path.
      ]]
    }
  },
  returns = {},
  notes = [[
    The `append` option lets you control the priority of the archive's files in the event of naming
    collisions.
  ]],
  example = {
    description = 'Mount `data.zip` with a file `images/background.png`:',
    code = [[
      lovr.filesystem.mount('data.zip', 'assets')
      print(lovr.filesystem.exists('assets/images/background.png')) -- true
    ]]
  },
  related = {
    'lovr.filesystem.unmount'
  }
}
