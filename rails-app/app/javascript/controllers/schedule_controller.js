import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = [ "monthlyFields", "weeklyFields" ]

    toggleFields(event) {
        console.log(this.weeklyFieldsTarget)
        console.log(this.monthlyFieldsTarget)
        switch (event.target.value) {
            case 'day':
                this.weeklyFieldsTarget.classList.add('hidden');
                this.monthlyFieldsTarget.classList.add('hidden');
                break;
            case 'week':
                this.weeklyFieldsTarget.classList.remove('hidden');
                this.monthlyFieldsTarget.classList.add('hidden');
                break;
            case 'month':
                this.weeklyFieldsTarget.classList.add('hidden');
                this.monthlyFieldsTarget.classList.remove('hidden');
                break;
            default:
                this.weeklyFieldsTarget.classList.add('hidden');
                this.monthlyFieldsTarget.classList.add('hidden');
                break;
        }
    }

    resetInputs() {

    }
}
