import flatpickr from 'flatpickr'
import 'flatpickr/dist/flatpickr.min.css'

const initFlatpicker = () => {
  flatpickr(".datepicker", {});
}

export { initFlatpicker };
