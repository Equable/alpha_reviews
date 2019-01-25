import RestaurantInfoTile from "../../app/javascript/tiles/RestaurantInfoTile"
import CategoryTile from "../../app/javascript/tiles/CategoryTile"

describe('RestaurantInfoTile', () => {
  let text,
      wrapper;

  beforeEach(() => {
    wrapper = mount(
      <RestaurantInfoTile
        restaurant={{ name: "Papa Johns", street: "123 Food Lane", city:"Boston", state:"MA", zip:"02110", categories:[{name:"Fast Food"}] }}
      />
    );
  });

  it('should render an h1 tag', () => {
    expect(wrapper.find('h1')).toBePresent();
  });

  it('should render an h1 tag with the text property value', () => {
    expect(wrapper.find('h1').text()).toBe('Papa Johns');
  });

  it('should render an h2 tag with the text property value', () => {
    expect(wrapper.find('h2').text()).toBe('Address: 123 Food Lane');
  });

  it('should render an p tag with the text property value', () => {
    expect(wrapper.find('p').text()).toBe('Boston, MA 02110');
  });

  it('should render an h4 tag with the text property value', () => {
    expect(wrapper.find('h4').text()).toBe('Fast Food');
  });
});
