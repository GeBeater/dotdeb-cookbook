require 'spec_helper'

describe 'dotdeb::default' do

    let(:chef_run) do
        ChefSpec::Runner.new do |node|
            node.set['lsb']['codename'] = 'wheezy'
        end.converge(described_recipe)
    end

    it 'add the dotdeb repository to sources.list.de' do
        expect(chef_run).to add_apt_repository 'dotdeb'
    end

end
