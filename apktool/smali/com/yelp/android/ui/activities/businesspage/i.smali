.class public Lcom/yelp/android/ui/activities/businesspage/i;
.super Lcom/yelp/android/ui/util/w;
.source "MovieAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/businesspage/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/w",
        "<",
        "Lcom/yelp/android/serializable/Movie;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/text/DateFormat;

.field private final b:Ljava/util/Calendar;

.field private final c:Lcom/yelp/android/ui/util/t;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/util/t;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/util/t;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Movie;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/i;->c:Lcom/yelp/android/ui/util/t;

    .line 32
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/activities/businesspage/i;->a(Ljava/util/List;)V

    .line 33
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/i;->a:Ljava/text/DateFormat;

    .line 34
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/i;->b:Ljava/util/Calendar;

    .line 35
    return-void
.end method

.method private static a(Lcom/yelp/android/serializable/Movie;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 38
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Movie;->c()I

    move-result v0

    div-int/lit8 v0, v0, 0x3c

    .line 39
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Movie;->c()I

    move-result v1

    rem-int/lit8 v1, v1, 0x3c

    .line 40
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    .line 41
    if-lez v0, :cond_0

    .line 42
    const v3, 0x7f07032d

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

    .line 44
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0703ce

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/yelp/android/ui/activities/businesspage/i$a;Lcom/yelp/android/serializable/Movie;)V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 65
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/i;->c:Lcom/yelp/android/ui/util/t;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Movie;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    const v1, 0x7f0203ad

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/u$a;->a(I)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    iget-object v1, p1, Lcom/yelp/android/ui/activities/businesspage/i$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 69
    iget-object v0, p1, Lcom/yelp/android/ui/activities/businesspage/i$a;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Movie;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    .line 72
    invoke-virtual {p2}, Lcom/yelp/android/serializable/Movie;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p1, Lcom/yelp/android/ui/activities/businesspage/i$a;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    :goto_0
    invoke-virtual {p2}, Lcom/yelp/android/serializable/Movie;->c()I

    move-result v1

    if-lez v1, :cond_1

    .line 81
    iget-object v1, p1, Lcom/yelp/android/ui/activities/businesspage/i$a;->d:Landroid/widget/TextView;

    const v2, 0x7f0703e8

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/yelp/android/ui/activities/businesspage/i;->a(Lcom/yelp/android/serializable/Movie;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p1, Lcom/yelp/android/ui/activities/businesspage/i$a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    :goto_1
    iget-object v0, p1, Lcom/yelp/android/ui/activities/businesspage/i$a;->e:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/yelp/android/ui/activities/businesspage/i;->b(Lcom/yelp/android/serializable/Movie;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    return-void

    .line 75
    :cond_0
    iget-object v1, p1, Lcom/yelp/android/ui/activities/businesspage/i$a;->c:Landroid/widget/TextView;

    const v2, 0x7f0703e7

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Movie;->f()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v1, p1, Lcom/yelp/android/ui/activities/businesspage/i$a;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 87
    :cond_1
    iget-object v0, p1, Lcom/yelp/android/ui/activities/businesspage/i$a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private b(Lcom/yelp/android/serializable/Movie;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Movie;->b()[I

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/i;->b:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    .line 97
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/i;->b:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Movie;->b()[I

    move-result-object v4

    aget v4, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 98
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/i;->a:Ljava/text/DateFormat;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/i;->b:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
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
    .line 49
    .line 51
    if-nez p2, :cond_0

    .line 52
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300fe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 55
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/i$a;

    invoke-direct {v0, p2}, Lcom/yelp/android/ui/activities/businesspage/i$a;-><init>(Landroid/view/View;)V

    .line 56
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    .line 60
    :goto_0
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/i;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Movie;

    invoke-direct {p0, v1, v0}, Lcom/yelp/android/ui/activities/businesspage/i;->a(Lcom/yelp/android/ui/activities/businesspage/i$a;Lcom/yelp/android/serializable/Movie;)V

    .line 61
    return-object p2

    .line 58
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/i$a;

    move-object v1, v0

    goto :goto_0
.end method
