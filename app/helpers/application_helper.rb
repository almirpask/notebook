module ApplicationHelper
    ESTADOS_BRASILEIROS = [
        ["ACRE", "AC"],
        ["Alagoas", "AL"],
        ["Sao paulo", "SP"],
        ["Curitiba", "PR"],
        ["Rio de Janeiro", "RJ"],
        ["Bahia", "BH"]
    ]

    def options_for_state(select)
        options_for_select(ESTADOS_BRASILEIROS, select)
    end
end
