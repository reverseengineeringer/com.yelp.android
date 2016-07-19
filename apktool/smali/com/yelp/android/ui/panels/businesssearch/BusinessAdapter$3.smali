.class Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$3;
.super Lcom/yelp/android/ui/util/m;
.source "BusinessAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/m",
        "<TT;[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;)V
    .locals 0

    .prologue
    .line 635
    iput-object p1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$3;->a:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/m;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 635
    check-cast p2, Lcom/yelp/android/ui/panels/businesssearch/a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$3;->a(Landroid/content/Context;Lcom/yelp/android/ui/panels/businesssearch/a;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/yelp/android/ui/panels/businesssearch/a;)[Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 638
    invoke-interface {p2}, Lcom/yelp/android/ui/panels/businesssearch/a;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    .line 639
    if-nez v1, :cond_1

    .line 705
    :cond_0
    :goto_0
    return-object v0

    .line 642
    :cond_1
    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aG()Lcom/yelp/android/serializable/RecentFriendCheckIns;

    move-result-object v3

    .line 643
    if-eqz v3, :cond_0

    .line 649
    invoke-virtual {v3}, Lcom/yelp/android/serializable/RecentFriendCheckIns;->c()Ljava/util/List;

    move-result-object v4

    .line 650
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/RecentCheckIn;

    .line 651
    invoke-virtual {v0}, Lcom/yelp/android/serializable/RecentCheckIn;->b()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    .line 652
    :goto_1
    invoke-virtual {v3}, Lcom/yelp/android/serializable/RecentFriendCheckIns;->b()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 653
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/RecentCheckIn;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RecentCheckIn;->b()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 655
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v6, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 656
    add-int/lit8 v0, v1, 0x1

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 661
    :cond_2
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/RecentCheckIn;

    .line 665
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_4

    .line 666
    const v1, 0x7f07066c

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 669
    const-string/jumbo v1, ", "

    new-instance v5, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$3$1;

    invoke-direct {v5, p0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$3$1;-><init>(Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$3;)V

    invoke-static {v1, v4, v5}, Lcom/yelp/android/util/StringUtils;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;Lcom/yelp/android/util/StringUtils$c;)Ljava/lang/String;

    move-result-object v1

    .line 701
    :goto_2
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    .line 702
    aput-object v3, v4, v6

    .line 703
    aput-object v1, v4, v2

    .line 704
    const/4 v1, 0x2

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RecentCheckIn;->b()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    move-object v0, v4

    .line 705
    goto/16 :goto_0

    .line 652
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 682
    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 683
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 684
    invoke-virtual {v0}, Lcom/yelp/android/serializable/RecentCheckIn;->c()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 685
    const/16 v4, 0xa

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 686
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 687
    const v1, 0x7f07066f

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RecentCheckIn;->b()Lcom/yelp/android/serializable/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/serializable/User;->ad()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 697
    :goto_3
    sget-object v3, Lcom/yelp/android/util/StringUtils$Format;->LONG:Lcom/yelp/android/util/StringUtils$Format;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RecentCheckIn;->c()Ljava/util/Date;

    move-result-object v4

    invoke-static {p1, v3, v4}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    move-object v3, v1

    move-object v1, v7

    goto :goto_2

    .line 692
    :cond_5
    const v1, 0x7f07066e

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RecentCheckIn;->b()Lcom/yelp/android/serializable/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/serializable/User;->ad()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method
