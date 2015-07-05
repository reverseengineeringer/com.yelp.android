.class public final Lcom/yelp/android/ui/activities/businesspage/t;
.super Landroid/support/v4/view/bo;
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
    invoke-direct {p0}, Landroid/support/v4/view/bo;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/t;->a:Ljava/util/ArrayList;

    .line 43
    return-void
.end method

.method private a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    packed-switch p2, :pswitch_data_0

    .line 219
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 213
    :pswitch_0
    const v0, 0x7f0703e8

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 215
    :pswitch_1
    const v0, 0x7f0701d7

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 217
    :pswitch_2
    const v0, 0x7f0700cc

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 72
    new-instance v0, Lcom/yelp/android/ui/widgets/MessageAlertBox;

    const/4 v1, 0x0

    const v2, 0x7f01007b

    invoke-direct {v0, p1, v1, v2}, Lcom/yelp/android/ui/widgets/MessageAlertBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 180
    new-instance v1, Lcom/yelp/android/ui/widgets/MessageAlertBox;

    const v2, 0x7f010079

    invoke-direct {v1, p1, v0, v2}, Lcom/yelp/android/ui/widgets/MessageAlertBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 183
    if-eqz p2, :cond_0

    .line 184
    const-string/jumbo v0, "confirmation_message"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    :cond_0
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 79
    new-instance v0, Lcom/yelp/android/ui/widgets/MessageAlertBox;

    const/4 v1, 0x0

    const v2, 0x7f01007c

    invoke-direct {v0, p1, v1, v2}, Lcom/yelp/android/ui/widgets/MessageAlertBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->getReservation()Lcom/yelp/android/serializable/Reservation;

    move-result-object v1

    .line 83
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Reservation;->getConfirmationTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Reservation;->getConfirmationSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 86
    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/v;

    invoke-direct {v1, p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/v;-><init>(Lcom/yelp/android/ui/activities/businesspage/t;Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 47
    new-instance v0, Lcom/yelp/android/ui/widgets/MessageAlertBox;

    const/4 v1, 0x0

    const v2, 0x7f01007d

    invoke-direct {v0, p1, v1, v2}, Lcom/yelp/android/ui/widgets/MessageAlertBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    invoke-virtual {v0, p3}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setTitle(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {v0, p4}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 59
    :cond_0
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->getReservation()Lcom/yelp/android/serializable/Reservation;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz p5, :cond_2

    .line 60
    :cond_1
    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/u;

    invoke-direct {v1, p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/u;-><init>(Lcom/yelp/android/ui/activities/businesspage/t;Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 161
    new-instance v0, Lcom/yelp/android/ui/widgets/MessageAlertBox;

    const/4 v1, 0x0

    const v2, 0x7f010077

    invoke-direct {v0, p1, v1, v2}, Lcom/yelp/android/ui/widgets/MessageAlertBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 163
    const v1, 0x7f0700de

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 156
    new-instance v0, Lcom/yelp/android/ui/widgets/MessageAlertBox;

    const/4 v1, 0x0

    const v2, 0x7f010075

    invoke-direct {v0, p1, v1, v2}, Lcom/yelp/android/ui/widgets/MessageAlertBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 157
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    return-void
.end method

.method public b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 8

    .prologue
    const v7, 0x7f02009c

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 97
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->getCheckedInFriends()Ljava/util/List;

    move-result-object v2

    .line 99
    new-instance v6, Lcom/yelp/android/ui/widgets/MessageAlertBox;

    const/4 v0, 0x0

    const v1, 0x7f01007a

    invoke-direct {v6, p1, v0, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .line 103
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    .line 105
    if-ne v5, v3, :cond_0

    .line 106
    const v1, 0x7f0702a2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getNameWithoutPeriod()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setTitle(Ljava/lang/CharSequence;)V

    .line 108
    sget-object v1, Lcom/yelp/android/util/StringUtils$Format;->LONG:Lcom/yelp/android/util/StringUtils$Format;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getCheckIn()Lcom/yelp/android/serializable/YelpCheckIn;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpCheckIn;->getDateCreated()Ljava/util/Date;

    move-result-object v3

    invoke-static {p1, v1, v3}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getUserPhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v7}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->a(Ljava/lang/String;I)V

    .line 135
    :goto_0
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yelp/android/serializable/User;

    .line 137
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/w;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/activities/businesspage/w;-><init>(Lcom/yelp/android/ui/activities/businesspage/t;Ljava/util/List;Landroid/content/Context;Lcom/yelp/android/serializable/User;Lcom/yelp/android/serializable/YelpBusiness;)V

    invoke-virtual {v6, v0}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    return-void

    .line 113
    :cond_0
    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getUserPhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v3

    .line 114
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 115
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getUserPhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 116
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 117
    add-int/lit8 v0, v1, 0x1

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 123
    :cond_1
    const v0, 0x7f0702ac

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getUserPhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v7}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->a(Ljava/lang/String;I)V

    .line 127
    new-array v3, v5, [Ljava/lang/String;

    move v1, v4

    .line 128
    :goto_2
    if-ge v1, v5, :cond_3

    .line 129
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getNameWithoutPeriod()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    .line 128
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 114
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 132
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
    .line 169
    new-instance v0, Lcom/yelp/android/ui/widgets/MessageAlertBox;

    const/4 v1, 0x0

    const v2, 0x7f010078

    invoke-direct {v0, p1, v1, v2}, Lcom/yelp/android/ui/widgets/MessageAlertBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 170
    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/x;

    invoke-direct {v1, p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/x;-><init>(Lcom/yelp/android/ui/activities/businesspage/t;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    return-void
.end method

.method public c(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 203
    new-instance v0, Lcom/yelp/android/ui/widgets/MessageAlertBox;

    const/4 v1, 0x0

    const v2, 0x7f01007e

    invoke-direct {v0, p1, v1, v2}, Lcom/yelp/android/ui/widgets/MessageAlertBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 204
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/yelp/android/ui/activities/businesspage/t;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setTitle(Ljava/lang/CharSequence;)V

    .line 206
    const v1, 0x7f070668

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    return-void
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 191
    new-instance v0, Lcom/yelp/android/ui/widgets/MessageAlertBox;

    const/4 v1, 0x0

    const v2, 0x7f010076

    invoke-direct {v0, p1, v1, v2}, Lcom/yelp/android/ui/widgets/MessageAlertBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 193
    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/y;

    invoke-direct {v1, p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/y;-><init>(Lcom/yelp/android/ui/activities/businesspage/t;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    return-void
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 226
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    new-instance v0, Lcom/yelp/android/ui/widgets/MessageAlertBox;

    const v1, 0x7f010080

    invoke-direct {v0, p1, v2, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 245
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    return-void

    .line 230
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/widgets/MessageAlertBox;

    const v1, 0x7f01007f

    invoke-direct {v0, p1, v2, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 233
    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/z;

    invoke-direct {v1, p0, p2, p1}, Lcom/yelp/android/ui/activities/businesspage/z;-><init>(Lcom/yelp/android/ui/activities/businesspage/t;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 257
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 258
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPageWidth(I)F
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 278
    const/high16 v0, 0x3f800000    # 1.0f

    .line 281
    :goto_0
    return v0

    :cond_0
    const v0, 0x3f666666    # 0.9f

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 251
    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 252
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 267
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 286
    invoke-super {p0}, Landroid/support/v4/view/bo;->notifyDataSetChanged()V

    .line 288
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 289
    if-nez v2, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x0

    sget-object v4, Lcom/yelp/android/b;->GapSizes:[I

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 300
    sget v3, Lcom/yelp/android/appdata/ao;->e:I

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 302
    div-int/lit8 v4, v3, 0x2

    .line 303
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 305
    if-ne v2, v5, :cond_2

    .line 306
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/MessageAlertBox;

    invoke-virtual {v0, v3, v3}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->a(II)V

    goto :goto_0

    .line 310
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/MessageAlertBox;

    .line 312
    if-nez v1, :cond_3

    .line 313
    invoke-virtual {v0, v3, v4}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->a(II)V

    .line 310
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 314
    :cond_3
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_4

    .line 315
    invoke-virtual {v0, v4, v3}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->a(II)V

    goto :goto_2

    .line 317
    :cond_4
    invoke-virtual {v0, v4, v4}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->a(II)V

    goto :goto_2
.end method
