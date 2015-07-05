.class public Lcom/yelp/android/ui/activities/profile/MoreAboutUser;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "MoreAboutUser.java"


# instance fields
.field private a:Lcom/yelp/android/appdata/webrequests/gx;

.field private b:Landroid/view/View;

.field private c:Lcom/yelp/android/serializable/User;

.field private d:Landroid/content/Intent;

.field private final e:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/gw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    .line 327
    new-instance v0, Lcom/yelp/android/ui/activities/profile/o;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/profile/o;-><init>(Lcom/yelp/android/ui/activities/profile/MoreAboutUser;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->e:Lcom/yelp/android/appdata/webrequests/m;

    .line 345
    new-instance v0, Lcom/yelp/android/ui/activities/profile/p;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/profile/p;-><init>(Lcom/yelp/android/ui/activities/profile/MoreAboutUser;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->f:Lcom/yelp/android/appdata/webrequests/m;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    const-string/jumbo v1, "I feel so used :("

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 66
    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030124

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->b:Landroid/view/View;

    .line 195
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->f()V

    .line 196
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/profile/MoreAboutUser;Lcom/yelp/android/serializable/User;)Lcom/yelp/android/serializable/User;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->c:Lcom/yelp/android/serializable/User;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/profile/MoreAboutUser;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->f()V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/yelp/android/serializable/User;)V
    .locals 4

    .prologue
    const v3, 0x7f0c01bf

    .line 151
    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 152
    invoke-virtual {v0}, Landroid/view/ViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 153
    invoke-virtual {v0}, Landroid/view/ViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 154
    const v1, 0x7f030137

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 155
    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setInflatedId(I)V

    .line 156
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 157
    const v1, 0x7f070655

    .line 158
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/yelp/android/appdata/webrequests/dc;->a(Lcom/yelp/android/serializable/User;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    const v1, 0x7f0706bf

    .line 161
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setEmptyView(Landroid/view/View;)V

    .line 163
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/profile/MoreAboutUser;)Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->c:Lcom/yelp/android/serializable/User;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/profile/MoreAboutUser;)Lcom/yelp/android/appdata/webrequests/gx;
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->g()Lcom/yelp/android/appdata/webrequests/gx;

    move-result-object v0

    return-object v0
.end method

.method private c()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 171
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 172
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getProfileBio()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 173
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 174
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-static {v1}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    .line 176
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-virtual {v7, v3, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    array-length v8, v1

    move v2, v3

    :goto_1
    if-ge v2, v8, :cond_2

    aget-object v9, v1, v2

    .line 177
    invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    .line 178
    const-string/jumbo v10, "http://"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v9

    invoke-virtual {v7, v9, v10}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    .line 179
    const-string/jumbo v11, "http://"

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 180
    const-string/jumbo v10, "http://"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v9

    invoke-virtual {v7, v9, v10}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 182
    :cond_0
    if-lez v9, :cond_1

    .line 183
    const-string/jumbo v10, "\n\n"

    invoke-virtual {v7, v9, v10}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 176
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 186
    :cond_2
    const-string/jumbo v1, "label"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string/jumbo v0, "value"

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 190
    :cond_3
    return-object v4
.end method

.method private f()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 200
    new-instance v4, Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->h()Lcom/yelp/android/appdata/n;

    move-result-object v0

    const/16 v1, 0x40d

    invoke-direct {v4, v0, v1}, Lcom/yelp/android/ui/util/ImageInputHelper;-><init>(Lcom/yelp/android/appdata/n;I)V

    .line 203
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->b:Landroid/view/View;

    const v1, 0x7f0c0408

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 204
    new-instance v1, Lcom/yelp/android/ui/activities/profile/m;

    invoke-direct {v1, p0, v4}, Lcom/yelp/android/ui/activities/profile/m;-><init>(Lcom/yelp/android/ui/activities/profile/MoreAboutUser;Lcom/yelp/android/ui/util/ImageInputHelper;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->b:Landroid/view/View;

    const v2, 0x7f0c0409

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 214
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v2

    iget-object v5, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v2, v5}, Lcom/yelp/android/appdata/webrequests/dc;->a(Lcom/yelp/android/serializable/User;)Z

    move-result v5

    .line 215
    if-eqz v5, :cond_1

    .line 216
    const v2, 0x7f0703a2

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    :goto_0
    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/User;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;

    iget-object v7, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->c:Lcom/yelp/android/serializable/User;

    iget-object v8, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v8}, Lcom/yelp/android/serializable/User;->getPhotos()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/16 v9, 0x14

    invoke-direct {v6, v7, v8, v9, v3}, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;-><init>(Lcom/yelp/android/serializable/User;IILcom/yelp/android/appdata/webrequests/m;)V

    iget-object v7, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v7}, Lcom/yelp/android/serializable/User;->getPhotos()Ljava/util/List;

    move-result-object v7

    invoke-static {p0, v2, v6, v7}, Lcom/yelp/android/ui/activities/profile/UserMediaGrid;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v2

    .line 227
    new-instance v6, Lcom/yelp/android/ui/util/by;

    sget-object v7, Lcom/yelp/android/analytics/iris/EventIri;->ProfileMoreUserPhotos:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {v6, v7, v2}, Lcom/yelp/android/ui/util/by;-><init>(Lcom/yelp/android/analytics/iris/EventIri;Landroid/content/Intent;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->b:Landroid/view/View;

    const v6, 0x7f0c0407

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/yelp/android/ui/panels/SpanOfPhotosView;

    .line 231
    const/16 v6, 0x411

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const/high16 v8, 0x10000000

    invoke-virtual {p0, v6, v7, v8}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 233
    new-instance v7, Lcom/yelp/android/ui/util/bd;

    iget-object v8, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v8}, Lcom/yelp/android/serializable/User;->getPhotos()Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/yelp/android/ui/util/bd;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v6, v7}, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->a(Landroid/app/PendingIntent;Lcom/yelp/android/ui/util/bc;)V

    .line 235
    if-nez v5, :cond_2

    .line 243
    :goto_1
    iget-object v4, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/User;->getPhotos()Ljava/util/List;

    move-result-object v4

    const v6, 0x7f02009b

    invoke-virtual {v2, v4, v6, v3}, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->a(Ljava/util/List;ILandroid/view/View$OnClickListener;)V

    .line 245
    iget-object v3, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/User;->getPhotos()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2}, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->getMaxPhotoCount()I

    move-result v4

    if-gt v3, v4, :cond_3

    .line 246
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    :goto_2
    if-eqz v5, :cond_0

    if-eqz v5, :cond_4

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User;->getPhotos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2}, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->b()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 252
    :cond_0
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    :goto_3
    return-void

    .line 218
    :cond_1
    const v2, 0x7f0703a1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v7}, Lcom/yelp/android/serializable/User;->getFirstName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p0, v2, v6}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 235
    :cond_2
    new-instance v3, Lcom/yelp/android/ui/activities/profile/n;

    invoke-direct {v3, p0, v4}, Lcom/yelp/android/ui/activities/profile/n;-><init>(Lcom/yelp/android/ui/activities/profile/MoreAboutUser;Lcom/yelp/android/ui/util/ImageInputHelper;)V

    goto :goto_1

    .line 248
    :cond_3
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 254
    :cond_4
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method private g()Lcom/yelp/android/appdata/webrequests/gx;
    .locals 4

    .prologue
    .line 259
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->a:Lcom/yelp/android/appdata/webrequests/gx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->a:Lcom/yelp/android/appdata/webrequests/gx;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/gx;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->a:Lcom/yelp/android/appdata/webrequests/gx;

    .line 265
    :goto_0
    return-object v0

    .line 263
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/gx;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->e:Lcom/yelp/android/appdata/webrequests/m;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/User;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/gx;-><init>(Lcom/yelp/android/appdata/webrequests/m;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->a:Lcom/yelp/android/appdata/webrequests/gx;

    .line 264
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->a:Lcom/yelp/android/appdata/webrequests/gx;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/gx;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 265
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->a:Lcom/yelp/android/appdata/webrequests/gx;

    goto :goto_0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 3

    .prologue
    .line 297
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->MoreAboutUser:Lcom/yelp/android/analytics/iris/ViewIri;

    .line 298
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/dc;->a(Lcom/yelp/android/serializable/User;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->MoreAboutMe:Lcom/yelp/android/analytics/iris/ViewIri;

    .line 301
    :cond_0
    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 270
    sparse-switch p1, :sswitch_data_0

    .line 291
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/YelpListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 272
    :sswitch_0
    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    invoke-static {p3}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->b(Landroid/content/Intent;)I

    move-result v0

    .line 278
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User;->getPhotos()Ljava/util/List;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->b(Landroid/content/Context;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v0

    .line 280
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 284
    :sswitch_1
    if-ne p2, v0, :cond_1

    .line 285
    iput-object p3, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->d:Landroid/content/Intent;

    goto :goto_0

    .line 286
    :cond_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 287
    const v0, 0x7f070468

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cr;->a(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 270
    nop

    :sswitch_data_0
    .sparse-switch
        0x40d -> :sswitch_1
        0x411 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 71
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setItemsCanFocus(Z)V

    .line 73
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "I feel so used :("

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->c:Lcom/yelp/android/serializable/User;

    .line 74
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dc;->a(Lcom/yelp/android/serializable/User;)Z

    move-result v0

    .line 75
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User;->getFirstName()Ljava/lang/String;

    move-result-object v1

    .line 76
    if-eqz v0, :cond_0

    .line 77
    const v0, 0x7f070398

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->setTitle(Ljava/lang/CharSequence;)V

    .line 82
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->c:Lcom/yelp/android/serializable/User;

    invoke-direct {p0, v1, v0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->a(Ljava/lang/String;Lcom/yelp/android/serializable/User;)V

    .line 83
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->c()Ljava/util/ArrayList;

    move-result-object v2

    .line 84
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f030136

    new-array v4, v7, [Ljava/lang/String;

    const-string/jumbo v1, "label"

    aput-object v1, v4, v6

    const-string/jumbo v1, "value"

    aput-object v1, v4, v5

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 90
    new-instance v1, Lcom/yelp/android/ui/activities/profile/q;

    invoke-direct {v1}, Lcom/yelp/android/ui/activities/profile/q;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 96
    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    const v1, 0x102002b

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 98
    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 104
    :goto_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 105
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 106
    return-void

    .line 79
    :cond_0
    const v0, 0x7f070397

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v1, v2, v6

    invoke-virtual {p0, v0, v2}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    .line 101
    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_1

    .line 84
    :array_0
    .array-data 4
        0x7f0c0242
        0x7f0c0243
    .end array-data
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 129
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->onDestroy()V

    .line 130
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->a:Lcom/yelp/android/appdata/webrequests/gx;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->a:Lcom/yelp/android/appdata/webrequests/gx;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/gx;->cancel(Z)V

    .line 132
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->a:Lcom/yelp/android/appdata/webrequests/gx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/gx;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 134
    :cond_0
    return-void
.end method

.method protected onPostResume()V
    .locals 4

    .prologue
    .line 138
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->onPostResume()V

    .line 139
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->d:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->d:Landroid/content/Intent;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->f:Lcom/yelp/android/appdata/webrequests/m;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "dialog_add_photo"

    invoke-static {v0, p0, v1, v2, v3}, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;->a(Landroid/content/Intent;Lcom/yelp/android/ui/activities/support/YelpActivity;Lcom/yelp/android/appdata/webrequests/m;Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 143
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->d:Landroid/content/Intent;

    .line 144
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 124
    const-string/jumbo v0, "I feel so used :("

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->c:Lcom/yelp/android/serializable/User;

    .line 125
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 110
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->onResume()V

    .line 112
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->g()Lcom/yelp/android/appdata/webrequests/gx;

    .line 113
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 118
    const-string/jumbo v0, "I feel so used :("

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 119
    return-void
.end method
