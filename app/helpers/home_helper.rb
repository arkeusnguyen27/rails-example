module HomeHelper
    def boldcss(action_name)
        controller.action_name == action_name ? 'bold' : ''
    end
end
