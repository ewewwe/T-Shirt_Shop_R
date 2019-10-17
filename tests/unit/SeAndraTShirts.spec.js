import { mount } from '@vue/test-utils'
import seAndraTShirt from '@/components/seAndraTShirt.vue'

describe('seAndraTShirt', () =>{
    test('is a Vue instance', () => {
        const wrapper = mount(seAndraTShirt)
        expect(wrapper.isVueInstance()).toBeTruthy()
      })
    test('se andras TShirts', () =>{
        const wrapper = mount(seAndraTShirt)
        wrapper.vm.ChoseTShirt('TShirt1')
        expect(wrapper.vm.TShirts.view).toEqual('TShirt1')
    })
    test('Order', () =>{
        const wrapper = mount(seAndraTShirt)
        wrapper.vm.Order('True')
        expect(wrapper.vm.order).toEqual('True')
    })
})