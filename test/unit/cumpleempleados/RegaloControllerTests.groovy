package cumpleempleados



import org.junit.*
import grails.test.mixin.*

@TestFor(RegaloController)
@Mock(Regalo)
class RegaloControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/regalo/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.regaloInstanceList.size() == 0
        assert model.regaloInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.regaloInstance != null
    }

    void testSave() {
        controller.save()

        assert model.regaloInstance != null
        assert view == '/regalo/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/regalo/show/1'
        assert controller.flash.message != null
        assert Regalo.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/regalo/list'

        populateValidParams(params)
        def regalo = new Regalo(params)

        assert regalo.save() != null

        params.id = regalo.id

        def model = controller.show()

        assert model.regaloInstance == regalo
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/regalo/list'

        populateValidParams(params)
        def regalo = new Regalo(params)

        assert regalo.save() != null

        params.id = regalo.id

        def model = controller.edit()

        assert model.regaloInstance == regalo
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/regalo/list'

        response.reset()

        populateValidParams(params)
        def regalo = new Regalo(params)

        assert regalo.save() != null

        // test invalid parameters in update
        params.id = regalo.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/regalo/edit"
        assert model.regaloInstance != null

        regalo.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/regalo/show/$regalo.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        regalo.clearErrors()

        populateValidParams(params)
        params.id = regalo.id
        params.version = -1
        controller.update()

        assert view == "/regalo/edit"
        assert model.regaloInstance != null
        assert model.regaloInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/regalo/list'

        response.reset()

        populateValidParams(params)
        def regalo = new Regalo(params)

        assert regalo.save() != null
        assert Regalo.count() == 1

        params.id = regalo.id

        controller.delete()

        assert Regalo.count() == 0
        assert Regalo.get(regalo.id) == null
        assert response.redirectedUrl == '/regalo/list'
    }
}
