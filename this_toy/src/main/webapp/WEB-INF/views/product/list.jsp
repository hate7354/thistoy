<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="https://kit.fontawesome.com/a216194d9c.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/list.css">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <script src="/js/list.js" defer></script>
    <title>전체글보기</title>
</head>

<body>
    <!--------------header---------S----->
    <%@ include file="../includes/header.jsp"%>
    <!-- ------------------리스트(article)----------------- -->
    <article>
        <div class="title">피규어 > 애니</div>
        <div class="line"></div>
        <div class="list">
            <div class="aside">
                <button type="button" class="item nodrop">피규어</button>
                <div style="position: relative;">
                    <i class="fas fa-sort-down"></i>
                    <i class="fas fa-sort-up"></i>
                </div>
                <div class="dropbox">
                    <button type="button" class="item drop">애니</button>
                    <button type="button" class="item drop">게임</button>
                    <button type="button" class="item drop">연예인</button>
                </div>
                <button type="button" class="item nodrop">하우스</button>
                <div style="position: relative;">
                    <i class="fas fa-sort-down"></i>
                    <i class="fas fa-sort-up"></i>
                </div>
                <div class="dropbox">
                    <button type="button" class="item drop">소형</button>
                    <button type="button" class="item drop">중형</button>
                    <button type="button" class="item drop">대형</button>
                </div>
                <button type="button" class="item nodrop">RC</button>
                <div style="position: relative;">
                    <i class="fas fa-sort-down"></i>
                    <i class="fas fa-sort-up"></i>
                </div>
                <div class="dropbox">
                    <button type="button" class="item drop">육</button>
                    <button type="button" class="item drop">해</button>
                    <button type="button" class="item drop">공</button>
                </div>
                <button type="button" class="item nodrop">기타</button>
                <div style="position: relative;">
                    <i class="fas fa-sort-down"></i>
                    <i class="fas fa-sort-up"></i>
                </div>
                <div class="dropbox">
                    <button type="button" class="item drop">슬라임</button>
                    <button type="button" class="item drop">굿즈</button>
                </div>
                <button type="button" class="item nodrop">Best</button>
                <button type="button" class="item nodrop">New</button>
            </div>
            <div style="position: relative;">
                <i class="fas fa-caret-left"></i>
            </div>
            <div class="gridContainer">
                <div class="gridItem">
                    <a href="detail_main.html">
                        <img src="https://via.placeholder.com/265x170" alt="" />
                    </a>
                    <div class="product_info">
                        <a href="#">
                            <span class="product_name"><span class="product_logo">This Toy</span> 하기싫다</span>
                        </a>
                        <div class="product_price">가격 : 9,900원</div>
                        <div class="product_deliver_price">배송비 : 3,000원</div>
                        <div class="ratingbox">
                            <div class="rating rating2">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="rating rating1">
                                <i class="fa fa-star-o"></i>
                                <!--비어있는 별5개  -->
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                            </div>
                            <br />4.5
                        </div>
                    </div>
                </div>
                <div class="gridItem">
                    <a href="">
                        <img src="https://via.placeholder.com/265x170" alt="" />
                    </a>
                    <div class="product_info">
                        <a href="#">
                            <span class="product_name"><span class="product_logo">This Toy</span> 하기싫다</span>
                        </a>
                        <div class="product_price">가격 : 9,900원</div>
                        <div class="product_deliver_price">배송비 : 3,000원</div>
                        <div class="ratingbox">
                            <div class="rating rating2">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="rating rating1">
                                <i class="fa fa-star-o"></i>
                                <!--비어있는 별5개  -->
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                            </div>
                            <br />4.5
                        </div>
                    </div>
                </div>
                <div class="gridItem">
                    <a href="">
                        <img src="https://via.placeholder.com/265x170" alt="" />
                    </a>
                    <div class="product_info">
                        <a href="#">
                            <span class="product_name"><span class="product_logo">This Toy</span> 하기싫다</span>
                        </a>
                        <div class="product_price">가격 : 9,900원</div>
                        <div class="product_deliver_price">배송비 : 3,000원</div>
                        <div class="ratingbox">
                            <div class="rating rating2">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="rating rating1">
                                <i class="fa fa-star-o"></i>
                                <!--비어있는 별5개  -->
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                            </div>
                            <br />4.5
                        </div>
                    </div>
                </div>
                <div class="gridItem">
                    <a href="">
                        <img src="https://via.placeholder.com/265x170" alt="" />
                    </a>
                    <div class="product_info">
                        <a href="#">
                            <span class="product_name"><span class="product_logo">This Toy</span> 하기싫다</span>
                        </a>
                        <div class="product_price">가격 : 9,900원</div>
                        <div class="product_deliver_price">배송비 : 3,000원</div>
                        <div class="ratingbox">
                            <div class="rating rating2">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="rating rating1">
                                <i class="fa fa-star-o"></i>
                                <!--비어있는 별5개  -->
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                            </div>
                            <br />4.5
                        </div>
                    </div>
                </div>
                <div class="gridItem">
                    <a href="">
                        <img src="https://via.placeholder.com/265x170" alt="" />
                    </a>
                    <div class="product_info">
                        <a href="#">
                            <span class="product_name"><span class="product_logo">This Toy</span> 하기싫다</span>
                        </a>
                        <div class="product_price">가격 : 9,900원</div>
                        <div class="product_deliver_price">배송비 : 3,000원</div>
                        <div class="ratingbox">
                            <div class="rating rating2">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="rating rating1">
                                <i class="fa fa-star-o"></i>
                                <!--비어있는 별5개  -->
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                            </div>
                            <br />4.5
                        </div>
                    </div>
                </div>
                <div class="gridItem">
                    <a href="">
                        <img src="https://via.placeholder.com/265x170" alt="" />
                    </a>
                    <div class="product_info">
                        <a href="#">
                            <span class="product_name"><span class="product_logo">This Toy</span> 하기싫다</span>
                        </a>
                        <div class="product_price">가격 : 9,900원</div>
                        <div class="product_deliver_price">배송비 : 3,000원</div>
                        <div class="ratingbox">
                            <div class="rating rating2">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="rating rating1">
                                <i class="fa fa-star-o"></i>
                                <!--비어있는 별5개  -->
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                            </div>
                            <br />4.5
                        </div>
                    </div>
                </div>
                <div class="gridItem">
                    <a href="">
                        <img src="https://via.placeholder.com/265x170" alt="" />
                    </a>
                    <div class="product_info">
                        <a href="#">
                            <span class="product_name"><span class="product_logo">This Toy</span> 하기싫다</span>
                        </a>
                        <div class="product_price">가격 : 9,900원</div>
                        <div class="product_deliver_price">배송비 : 3,000원</div>
                        <div class="ratingbox">
                            <div class="rating rating2">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="rating rating1">
                                <i class="fa fa-star-o"></i>
                                <!--비어있는 별5개  -->
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                            </div>
                            <br />4.5
                        </div>
                    </div>
                </div>
                <div class="gridItem">
                    <a href="">
                        <img src="https://via.placeholder.com/265x170" alt="" />
                    </a>
                    <div class="product_info">
                        <a href="#">
                            <span class="product_name"><span class="product_logo">This Toy</span> 하기싫다</span>
                        </a>
                        <div class="product_price">가격 : 9,900원</div>
                        <div class="product_deliver_price">배송비 : 3,000원</div>
                        <div class="ratingbox">
                            <div class="rating rating2">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="rating rating1">
                                <i class="fa fa-star-o"></i>
                                <!--비어있는 별5개  -->
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                            </div>
                            <br />4.5
                        </div>
                    </div>
                </div>
                <div class="gridItem">
                    <a href="">
                        <img src="https://via.placeholder.com/265x170" alt="" />
                    </a>
                    <div class="product_info">
                        <a href="#">
                            <span class="product_name"><span class="product_logo">This Toy</span> 하기싫다</span>
                        </a>
                        <div class="product_price">가격 : 9,900원</div>
                        <div class="product_deliver_price">배송비 : 3,000원</div>
                        <div class="ratingbox">
                            <div class="rating rating2">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="rating rating1">
                                <i class="fa fa-star-o"></i>
                                <!--비어있는 별5개  -->
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                            </div>
                            <br />4.5
                        </div>
                    </div>
                </div>
                <div class="gridItem">
                    <a href="">
                        <img src="https://via.placeholder.com/265x170" alt="" />
                    </a>
                    <div class="product_info">
                        <a href="#">
                            <span class="product_name"><span class="product_logo">This Toy</span> 하기싫다</span>
                        </a>
                        <div class="product_price">가격 : 9,900원</div>
                        <div class="product_deliver_price">배송비 : 3,000원</div>
                        <div class="ratingbox">
                            <div class="rating rating2">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="rating rating1">
                                <i class="fa fa-star-o"></i>
                                <!--비어있는 별5개  -->
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                            </div>
                            <br />4.5
                        </div>
                    </div>
                </div>
                <div class="gridItem">
                    <a href="">
                        <img src="https://via.placeholder.com/265x170" alt="" />
                    </a>
                    <div class="product_info">
                        <a href="#">
                            <span class="product_name"><span class="product_logo">This Toy</span> 하기싫다</span>
                        </a>
                        <div class="product_price">가격 : 9,900원</div>
                        <div class="product_deliver_price">배송비 : 3,000원</div>
                        <div class="ratingbox">
                            <div class="rating rating2">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="rating rating1">
                                <i class="fa fa-star-o"></i>
                                <!--비어있는 별5개  -->
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                            </div>
                            <br />4.5
                        </div>
                    </div>
                </div>
                <div class="gridItem">
                    <a href="">
                        <img src="https://via.placeholder.com/265x170" alt="" />
                    </a>
                    <div class="product_info">
                        <a href="#">
                            <span class="product_name"><span class="product_logo">This Toy</span> 하기싫다</span>
                        </a>
                        <div class="product_price">가격 : 9,900원</div>
                        <div class="product_deliver_price">배송비 : 3,000원</div>
                        <div class="ratingbox">
                            <div class="rating rating2">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="rating rating1">
                                <i class="fa fa-star-o"></i>
                                <!--비어있는 별5개  -->
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                            </div>
                            <br />4.5
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="page">
            <i class="fas fa-angle-double-left"></i>
            <i class="fas fa-angle-left"></i>
            <a href="#">1</a>
            <a href="#">2</a>
            <a href="#">3</a>
            <a href="#">4</a>
            <a href="#">5</a>
            <i class="fas fa-angle-right"></i>
            <i class="fas fa-angle-double-right"></i>
        </div>
    </article>
    <!-- -----------------footer----------------- -->
    <%@ include file="../includes/footer.jsp"%>
</body>
</html>