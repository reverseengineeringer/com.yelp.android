.class Lcom/yelp/android/ui/activities/businesspage/n;
.super Lcom/yelp/android/webimageview/ImageLoaderHandler;
.source "AddBusinessToContacts.java"


# instance fields
.field private final a:Lcom/yelp/android/serializable/YelpBusiness;

.field private final b:Landroid/app/Activity;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yelp/android/webimageview/ImageLoaderHandler;-><init>(Ljava/lang/Object;)V

    .line 62
    iput-object p2, p0, Lcom/yelp/android/ui/activities/businesspage/n;->a:Lcom/yelp/android/serializable/YelpBusiness;

    .line 63
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/n;->b:Landroid/app/Activity;

    .line 64
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/n;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getCategories()Ljava/util/List;

    move-result-object v1

    .line 116
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 117
    const-string/jumbo v2, ", "

    new-instance v3, Lcom/yelp/android/serializable/w;

    invoke-direct {v3}, Lcom/yelp/android/serializable/w;-><init>()V

    invoke-static {v2, v1, v3}, Lcom/yelp/android/util/StringUtils;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;Lcom/yelp/android/util/ag;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/n;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getCrossStreets()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 122
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/n;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getCrossStreets()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_1
    const-string/jumbo v1, " \n"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 126
    const-string/jumbo v1, "notes"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    return-void
.end method

.method private a(Landroid/content/Intent;Landroid/os/Message;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 139
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 142
    if-eqz p2, :cond_0

    .line 143
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 144
    const-string/jumbo v2, "droidfu:extra_bitmap"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 145
    if-eqz v0, :cond_0

    .line 146
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 147
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 149
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 150
    const-string/jumbo v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string/jumbo v3, "data15"

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 153
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/n;->a:Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/n;->b:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/YelpBusiness;->getYelpUrl(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 164
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 165
    const-string/jumbo v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/website"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string/jumbo v3, "data2"

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 167
    const-string/jumbo v3, "data1"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_1
    const-string/jumbo v0, "data"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 173
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 69
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    const-string/jumbo v1, "vnd.android.cursor.dir/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string/jumbo v1, "name"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/n;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/n;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getDialablePhone()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    const-string/jumbo v1, "phone"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/n;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getDialablePhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string/jumbo v1, "phone_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/n;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getLocalizedStreetAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 87
    const-string/jumbo v1, "postal_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    const-string/jumbo v1, "postal"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/n;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getLocalizedStreetAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    :cond_1
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/n;->a(Landroid/content/Intent;)V

    .line 92
    invoke-direct {p0, v0, p1}, Lcom/yelp/android/ui/activities/businesspage/n;->a(Landroid/content/Intent;Landroid/os/Message;)V

    .line 94
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/n;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 95
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 99
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/n;->a(Landroid/os/Message;)V

    goto :goto_0
.end method
