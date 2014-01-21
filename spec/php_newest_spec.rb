require 'spec_helper'

describe 'dotdeb::php_newest' do

    context 'squeeze' do
        let(:chef_run) do
          runner = ChefSpec::Runner.new(
            'platform' => 'debian',
            'version' => '6.0.0'
            )
          runner.node.set['lsb']['codename'] = 'squeeze'
          runner.converge(described_recipe)
        end

        it 'add the dotdeb repository to sources.list.d' do
            expect(chef_run).to add_apt_repository 'dotdeb-php54'
        end
    end

    context 'wheezy' do
        let(:chef_run) do
          runner = ChefSpec::Runner.new(
            'platform' => 'debian',
            'version' => '7.0.0'
            )
          runner.node.set['lsb']['codename'] = 'wheezy'
          runner.converge(described_recipe)
        end

        it 'add the dotdeb repository to sources.list.d' do
            expect(chef_run).to add_apt_repository 'dotdeb-php55'
        end
    end

end