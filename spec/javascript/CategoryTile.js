import CategoryTile from "../../app/javascript/tiles/CategoryTile"

describe('CategoryTile', () => {
  let text,
      wrapper;

  beforeEach(() => {
    wrapper = mount(
      <CategoryTile
        key="1"
        name="Tonys Pizza"
      />
    );
  });

  it('should render an h4 tag', () => {
    expect(wrapper.find('h4')).toBePresent();
  });

  it('should render an h4 tag with the text property value', () => {
    expect(wrapper.find('h4').text()).toBe('Tonys Pizza');
  });
});
