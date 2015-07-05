.class public Lcom/yelp/android/ui/activities/businesspage/cg;
.super Lcom/yelp/android/ui/util/au;
.source "MovieAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/au",
        "<",
        "Lcom/yelp/android/serializable/Movie;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/text/DateFormat;

.field private final b:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Movie;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/yelp/android/ui/util/au;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/cg;->a(Ljava/util/List;)V

    .line 30
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/cg;->a:Ljava/text/DateFormat;

    .line 31
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/cg;->b:Ljava/util/Calendar;

    .line 32
    return-void
.end method

.method private static a(Lcom/yelp/android/serializable/Movie;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 35
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Movie;->getRuntime()I

    move-result v0

    div-int/lit8 v0, v0, 0x3c

    .line 36
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Movie;->getRuntime()I

    move-result v1

    rem-int/lit8 v1, v1, 0x3c

    .line 37
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    .line 38
    if-lez v0, :cond_0

    .line 39
    const v3, 0x7f0702ec

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f070390

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/yelp/android/ui/activities/businesspage/ch;Lcom/yelp/android/serializable/Movie;)V
    .locals 8

    .prologue
    const v2, 0x7f0202a2

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 61
    iget-object v0, p1, Lcom/yelp/android/ui/activities/businesspage/ch;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Movie;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 62
    iget-object v0, p1, Lcom/yelp/android/ui/activities/businesspage/ch;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/WebImageView;->setLoadingDrawable(I)V

    .line 63
    iget-object v0, p1, Lcom/yelp/android/ui/activities/businesspage/ch;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Movie;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    .line 66
    invoke-virtual {p2}, Lcom/yelp/android/serializable/Movie;->getRating()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p1, Lcom/yelp/android/ui/activities/businesspage/ch;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    :goto_0
    invoke-virtual {p2}, Lcom/yelp/android/serializable/Movie;->getRuntime()I

    move-result v1

    if-lez v1, :cond_1

    .line 75
    iget-object v1, p1, Lcom/yelp/android/ui/activities/businesspage/ch;->d:Landroid/widget/TextView;

    const v2, 0x7f0703b2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/yelp/android/ui/activities/businesspage/cg;->a(Lcom/yelp/android/serializable/Movie;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p1, Lcom/yelp/android/ui/activities/businesspage/ch;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    :goto_1
    iget-object v0, p1, Lcom/yelp/android/ui/activities/businesspage/ch;->e:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/yelp/android/ui/activities/businesspage/cg;->b(Lcom/yelp/android/serializable/Movie;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    return-void

    .line 69
    :cond_0
    iget-object v1, p1, Lcom/yelp/android/ui/activities/businesspage/ch;->c:Landroid/widget/TextView;

    const v2, 0x7f0703b1

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Movie;->getRating()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v1, p1, Lcom/yelp/android/ui/activities/businesspage/ch;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 79
    :cond_1
    iget-object v0, p1, Lcom/yelp/android/ui/activities/businesspage/ch;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private b(Lcom/yelp/android/serializable/Movie;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Movie;->getShowtimes()[I

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 88
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/cg;->b:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    .line 89
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/cg;->b:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Movie;->getShowtimes()[I

    move-result-object v4

    aget v4, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 90
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/cg;->a:Ljava/text/DateFormat;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/cg;->b:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    const-string/jumbo v0, ", "

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 46
    .line 48
    if-nez p2, :cond_0

    .line 49
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300cc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 51
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/ch;

    invoke-direct {v0, p2}, Lcom/yelp/android/ui/activities/businesspage/ch;-><init>(Landroid/view/View;)V

    .line 52
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    .line 56
    :goto_0
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/cg;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Movie;

    invoke-direct {p0, v1, v0}, Lcom/yelp/android/ui/activities/businesspage/cg;->a(Lcom/yelp/android/ui/activities/businesspage/ch;Lcom/yelp/android/serializable/Movie;)V

    .line 57
    return-object p2

    .line 54
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/ch;

    move-object v1, v0

    goto :goto_0
.end method
