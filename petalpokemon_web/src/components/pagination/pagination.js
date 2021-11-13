import React, {useState, useEffect} from "react";
import ReactPaginate from "react-paginate";

const Pagination = ({itemsPerPage, totalItem, paginate}) => {

    const [pageCount, setPageCount] = useState(0);

    useEffect(() => {
        setPageCount(Math.ceil(totalItem / itemsPerPage));
      }, [totalItem, itemsPerPage]);
      
    const handlePageClick = (event) => {
        const {selected} = event;
        paginate(selected);
    };  

    return (
        <ReactPaginate
            breakLabel="..."
            nextLabel="next >"
            onPageChange={handlePageClick}
            pageRangeDisplayed={3}
            pageCount={pageCount}
            previousLabel="< previous"
            renderOnZeroPageCount={null}
            pageClassName="page-item"
            pageLinkClassName="page-link"
            previousClassName="page-item"
            previousLinkClassName="page-link"
            nextClassName="page-item"
            nextLinkClassName="page-link"
            breakClassName="page-item"
            breakLinkClassName="page-link"
            containerClassName="pagination"
            activeClassName="active"
        />
    );
}

export default Pagination;