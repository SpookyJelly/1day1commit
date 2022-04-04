import logo from "./logo.svg";
import "./App.css";
import { DatePicker } from "antd";
import moment from "moment";
import "moment/locale/ko";
// import "moment/dist/locale/ko";
import locale from "antd/lib/locale/ko_KR";
import { ConfigProvider } from "antd";

moment.locale("ko");

function App() {
  return (
    <ConfigProvider locale={locale}>
      <div className="App">
        <DatePicker />
      </div>
    </ConfigProvider>
  );
}

export default App;
