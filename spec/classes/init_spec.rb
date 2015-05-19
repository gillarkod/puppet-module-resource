require 'spec_helper'
describe 'resource' do

  context 'with defaults for all parameters' do
    it { should contain_class('resource') }
  end
  context 'with string as input' do
    let(:params) do
      { :file => 'string' }
    end
    it 'should fail' do
      expect {
        should contain_class('resource')
      }.to raise_error(Puppet::Error,/is not a Hash\./)
    end

  end
  context 'with hash as input' do
      let(:params) do
        { :file             => {
            'example file'  => {
              'path'        => '/usr/local/bin/example',
              'owner'       => 'root',
              'group'       => 'root',
              'mode'        => '0755',
            }
          },
          :mount => {
            'example mount' => {
              'ensure'      => 'mounted',
              'atboot'      => 'true',
              'device'      => 'fileserver:/exports/files',
              'fstype'      => 'nfs',
              'options'     => 'defaults',
            }
          },
          :cron  => {
            'example job'   => {
              'command'     => '/usr/local/bin/example',
              'hour'        => '23',
              'minute'      => '2',
              'user'        => 'root',
            }
          },
          :exec  => {
            'example exec'  => {
              'command'     => 'example',
              'path'        => '/usr/local/bin',
            }
          },
          :service => {
            'example svc'   => {
              'name'        => 'example',
              'ensure'      => 'stopped',
              'enable'      => 'false',
            }
          },
          :package => {
            'example package' => {
              'name'          => 'example',
              'ensure'        => 'latest',
            }
          },
          :file_line => {
            'example file_line' => {
              'path'            => '/etc/example-file',
              'line'            => 'exampleconf = true',
              'match'           => 'exampleconf = .*',
            }
          },
        }
      end

      it { should contain_file('example file').with({
        'path'    => '/usr/local/bin/example',
        'owner'   => 'root',
        'group'   => 'root',
        'mode'    => '0755',
      })}

      it { should contain_mount('example mount').with({
        'ensure'  => 'mounted',
        'atboot'  => 'true',
        'device'  => 'fileserver:/exports/files',
        'fstype'  => 'nfs',
        'options' => 'defaults',
      })}

      it { should contain_cron('example job').with({
        'command' => '/usr/local/bin/example',
        'hour'    => '23',
        'minute'  => '2',
        'user'    => 'root',
      })}

      it { should contain_exec('example exec').with({
        'command' => 'example',
        'path'    => '/usr/local/bin',
      })}

      it { should contain_service('example svc').with({
        'name'    => 'example',
        'ensure'  => 'stopped',
        'enable'  => 'false',
      })}

      it { should contain_file_line('example file_line').with({
        'path'  => '/etc/example-file',
        'line'  => 'exampleconf = true',
        'match' => 'exampleconf = .*',
      })}

    end
end


