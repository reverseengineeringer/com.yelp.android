.class public final Lcom/yelp/android/ui/activities/businesspage/d;
.super Landroid/support/v4/view/ac;
.source "BusinessNotificationAdapter.java"


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v4/view/ac;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/d;->a:Ljava/util/ArrayList;

    .line 43
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/yelp/android/serializable/ContinueLastOrderInfo;Ljava/lang/String;)Landroid/view/View;
    .locals 4

    .prologue
    .line 78
    new-instance v0, Lcom/yelp/android/ui/widgets/MessageAlertBox;

    const/4 v1, 0x0

    const v2, 0x7f0100ac

    invoke-direct {v0, p1, v1, v2}, Lcom/yelp/android/ui/widgets/MessageAlertBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    invoke-virtual {p2}, Lcom/yelp/android/serializable/ContinueLastOrderInfo;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/yelp/android/serializable/ContinueLastOrderInfo;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/util/StringUtils$Format;->LONG:Lcom/yelp/android/util/StringUtils$Format;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/ContinueLastOrderInfo;->h()Ljava/util/Date;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {p2}, Lcom/yelp/android/serializable/ContinueLastOrderInfo;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020138

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->a(Ljava/lang/String;I)V

    .line 89
    sget-object v1, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessCotinueLastOrder:Lcom/yelp/android/analytics/iris/ViewIri;

    const-string/jumbo v2, "id"

    invoke-static {v2, p3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 92
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 359
    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 360
    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 97
    new-instance v0, Lcom/yelp/android/ui/widgets/MessageAlertBox;

    const/4 v1, 0x0

    const v2, 0x7f0100aa

    invoke-direct {v0, p1, v1, v2}, Lcom/yelp/android/ui/widgets/MessageAlertBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method public a(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 316
    new-instance v0, Lcom/yelp/android/ui/widgets/MessageAlertBox;

    const/4 v1, 0x0

    const v2, 0x7f0100ad

    invoke-direct {v0, p1, v1, v2}, Lcom/yelp/android/ui/widgets/MessageAlertBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 318
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080015

    invoke-virtual {v1, v2, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setTitle(Ljava/lang/CharSequence;)V

    .line 321
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080014

    invoke-virtual {v1, v2, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 226
    new-instance v0, Lcom/yelp/android/ui/widgets/MessageAlertBox;

    const/4 v1, 0x0

    const v2, 0x7f0100a8

    invoke-direct {v0, p1, v1, v2}, Lcom/yelp/android/ui/widgets/MessageAlertBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 229
    const-string/jumbo v1, "confirmation_main"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 231
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setTitle(Ljava/lang/CharSequence;)V

    .line 234
    :cond_0
    const-string/jumbo v1, "confirmation_sub"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 236
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 238
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 3

    .prologue
    .line 103
    new-instance v0, Lcom/yelp/android/ui/widgets/MessageAlertBox;

    const/4 v1, 0x0

    const v2, 0x7f0100ab

    invoke-direct {v0, p1, v1, v2}, Lcom/yelp/android/ui/widgets/MessageAlertBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->aF()Lcom/yelp/android/serializable/Reservation;

    move-result-object v1

    .line 107
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Reservation;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setTitle(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Reservation;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 110
    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/d$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/d$2;-><init>(Lcom/yelp/android/ui/activities/businesspage/d;Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 51
    new-instance v0, Lcom/yelp/android/ui/widgets/MessageAlertBox;

    const/4 v1, 0x0

    const v2, 0x7f0100ac

    invoke-direct {v0, p1, v1, v2}, Lcom/yelp/android/ui/widgets/MessageAlertBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    invoke-virtual {v0, p3}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {v0, p4}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 63
    :cond_0
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->aF()Lcom/yelp/android/serializable/Reservation;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz p5, :cond_2

    .line 64
    :cond_1
    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/d$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/d$1;-><init>(Lcom/yelp/android/ui/activities/businesspage/d;Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 206
    new-instance v0, Lcom/yelp/android/ui/widgets/MessageAlertBox;

    const/4 v1, 0x0

    const v2, 0x7f0100a6

    invoke-direct {v0, p1, v1, v2}, Lcom/yelp/android/ui/widgets/MessageAlertBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 208
    const v1, 0x7f070169

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 261
    new-instance v0, Lcom/yelp/android/ui/widgets/MessageAlertBox;

    const/4 v1, 0x0

    const v2, 0x7f0100a3

    invoke-direct {v0, p1, v1, v2}, Lcom/yelp/android/ui/widgets/MessageAlertBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 263
    const v1, 0x7f070162

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setTitle(Ljava/lang/CharSequence;)V

    .line 264
    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/d$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/d$6;-><init>(Lcom/yelp/android/ui/activities/businesspage/d;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    return-void
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 365
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 366
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 375
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 122
    new-instance v0, Lcom/yelp/android/ui/widgets/MessageAlertBox;

    const/4 v1, 0x0

    const v2, 0x7f0100ab

    invoke-direct {v0, p1, v1, v2}, Lcom/yelp/android/ui/widgets/MessageAlertBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 125
    const v1, 0x7f0706a4

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setTitle(Ljava/lang/CharSequence;)V

    .line 126
    const v1, 0x7f0701bb

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method

.method public b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 8

    .prologue
    const v7, 0x7f0200c7

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 132
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->aP()Ljava/util/List;

    move-result-object v2

    .line 134
    new-instance v6, Lcom/yelp/android/ui/widgets/MessageAlertBox;

    const/4 v0, 0x0

    const v1, 0x7f0100a9

    invoke-direct {v6, p1, v0, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 136
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .line 138
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    .line 140
    if-ne v5, v3, :cond_0

    .line 141
    const v1, 0x7f0702f1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->ac()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setTitle(Ljava/lang/CharSequence;)V

    .line 145
    sget-object v1, Lcom/yelp/android/util/StringUtils$Format;->LONG:Lcom/yelp/android/util/StringUtils$Format;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->r()Lcom/yelp/android/serializable/YelpCheckIn;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpCheckIn;->e()Ljava/util/Date;

    move-result-object v3

    invoke-static {p1, v1, v3}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 150
    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v7}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->b(Ljava/lang/String;I)V

    .line 175
    :goto_0
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yelp/android/serializable/User;

    .line 177
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/d$3;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/activities/businesspage/d$3;-><init>(Lcom/yelp/android/ui/activities/businesspage/d;Ljava/util/List;Landroid/content/Context;Lcom/yelp/android/serializable/User;Lcom/yelp/android/serializable/YelpBusiness;)V

    invoke-virtual {v6, v0}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    return-void

    .line 153
    :cond_0
    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v3

    .line 154
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 155
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 156
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 157
    add-int/lit8 v0, v1, 0x1

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 163
    :cond_1
    const v0, 0x7f0702f9

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setTitle(Ljava/lang/CharSequence;)V

    .line 165
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v7}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->b(Ljava/lang/String;I)V

    .line 167
    new-array v3, v5, [Ljava/lang/String;

    move v1, v4

    .line 168
    :goto_2
    if-ge v1, v5, :cond_3

    .line 169
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->ac()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    .line 168
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 154
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 172
    :cond_3
    const-string/jumbo v0, ", "

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 213
    new-instance v0, Lcom/yelp/android/ui/widgets/MessageAlertBox;

    const/4 v1, 0x0

    const v2, 0x7f0100a7

    invoke-direct {v0, p1, v1, v2}, Lcom/yelp/android/ui/widgets/MessageAlertBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 214
    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/d$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/d$4;-><init>(Lcom/yelp/android/ui/activities/businesspage/d;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 281
    new-instance v0, Lcom/yelp/android/ui/widgets/MessageAlertBox;

    const/4 v1, 0x0

    const v2, 0x7f0100a4

    invoke-direct {v0, p1, v1, v2}, Lcom/yelp/android/ui/widgets/MessageAlertBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 283
    const v1, 0x7f070163

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setTitle(Ljava/lang/CharSequence;)V

    .line 284
    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/d$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/d$7;-><init>(Lcom/yelp/android/ui/activities/businesspage/d;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    return-void
.end method

.method public c(I)F
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 386
    const/high16 v0, 0x3f800000    # 1.0f

    .line 389
    :goto_0
    return v0

    :cond_0
    const v0, 0x3f666666    # 0.9f

    goto :goto_0
.end method

.method public c()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 394
    invoke-super {p0}, Landroid/support/v4/view/ac;->c()V

    .line 396
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 397
    if-nez v2, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a00a6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 411
    div-int/lit8 v4, v3, 0x2

    .line 413
    const/4 v0, 0x1

    if-ne v2, v0, :cond_2

    .line 414
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/MessageAlertBox;

    invoke-virtual {v0, v3, v3}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->a(II)V

    goto :goto_0

    .line 418
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/MessageAlertBox;

    .line 420
    if-nez v1, :cond_3

    .line 421
    invoke-virtual {v0, v3, v4}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->a(II)V

    .line 418
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 422
    :cond_3
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_4

    .line 423
    invoke-virtual {v0, v4, v3}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->a(II)V

    goto :goto_2

    .line 425
    :cond_4
    invoke-virtual {v0, v4, v4}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->a(II)V

    goto :goto_2
.end method

.method public c(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 201
    new-instance v0, Lcom/yelp/android/ui/widgets/MessageAlertBox;

    const/4 v1, 0x0

    const v2, 0x7f0100a2

    invoke-direct {v0, p1, v1, v2}, Lcom/yelp/android/ui/widgets/MessageAlertBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 202
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    return-void
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 242
    new-instance v0, Lcom/yelp/android/ui/widgets/MessageAlertBox;

    const/4 v1, 0x0

    const v2, 0x7f0100a5

    invoke-direct {v0, p1, v1, v2}, Lcom/yelp/android/ui/widgets/MessageAlertBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 244
    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/d$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/d$5;-><init>(Lcom/yelp/android/ui/activities/businesspage/d;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    return-void
.end method

.method public d(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 300
    new-instance v0, Lcom/yelp/android/ui/widgets/MessageAlertBox;

    const/4 v1, 0x0

    const v2, 0x7f0100b0

    invoke-direct {v0, p1, v1, v2}, Lcom/yelp/android/ui/widgets/MessageAlertBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 302
    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/d$8;

    invoke-direct {v1, p0, p1}, Lcom/yelp/android/ui/activities/businesspage/d$8;-><init>(Lcom/yelp/android/ui/activities/businesspage/d;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    return-void
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 329
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    new-instance v0, Lcom/yelp/android/ui/widgets/MessageAlertBox;

    const v1, 0x7f0100af

    invoke-direct {v0, p1, v2, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 353
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    return-void

    .line 334
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/widgets/MessageAlertBox;

    const v1, 0x7f0100ae

    invoke-direct {v0, p1, v2, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 340
    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/d$9;

    invoke-direct {v1, p0, p2, p1}, Lcom/yelp/android/ui/activities/businesspage/d$9;-><init>(Lcom/yelp/android/ui/activities/businesspage/d;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
