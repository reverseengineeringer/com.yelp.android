.class public Lcom/yelp/android/ui/activities/profile/MoreAboutUser;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "MoreAboutUser.java"

# interfaces
.implements Lcom/yelp/android/ui/panels/PanelError$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/profile/MoreAboutUser$a;
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/appdata/webrequests/fn;

.field private b:Landroid/view/View;

.field private c:Lcom/yelp/android/serializable/User;

.field private d:Landroid/content/Intent;

.field private final e:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/fk$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    .line 392
    new-instance v0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser$4;-><init>(Lcom/yelp/android/ui/activities/profile/MoreAboutUser;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->e:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 411
    new-instance v0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser$5;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser$5;-><init>(Lcom/yelp/android/ui/activities/profile/MoreAboutUser;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->f:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    const-string/jumbo v1, "I feel so used :("

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 73
    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030187

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->b:Landroid/view/View;

    .line 219
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->g()V

    .line 220
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/profile/MoreAboutUser;)Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->c:Lcom/yelp/android/serializable/User;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/profile/MoreAboutUser;Lcom/yelp/android/serializable/User;)Lcom/yelp/android/serializable/User;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->c:Lcom/yelp/android/serializable/User;

    return-object p1
.end method

.method private a(Lcom/yelp/android/serializable/User;)V
    .locals 5

    .prologue
    const v3, 0x7f0f01ef

    .line 148
    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 149
    invoke-virtual {v0}, Landroid/view/ViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 150
    invoke-virtual {v0}, Landroid/view/ViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 151
    const v1, 0x7f03019a

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 152
    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setInflatedId(I)V

    .line 153
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 154
    const v1, 0x7f070633

    .line 155
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/yelp/android/appdata/webrequests/co;->a(Lcom/yelp/android/serializable/User;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    const v1, 0x7f07068f

    .line 158
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->Z()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setEmptyView(Landroid/view/View;)V

    .line 160
    return-void
.end method

.method private b()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 163
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->f()Ljava/util/ArrayList;

    move-result-object v2

    .line 164
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f030199

    new-array v4, v7, [Ljava/lang/String;

    const-string/jumbo v1, "label"

    aput-object v1, v4, v6

    const/4 v1, 0x1

    const-string/jumbo v5, "value"

    aput-object v5, v4, v1

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 171
    new-instance v1, Lcom/yelp/android/ui/activities/profile/MoreAboutUser$a;

    invoke-direct {v1}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser$a;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 177
    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    const v1, 0x102002b

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 179
    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 185
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 186
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 187
    return-void

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    .line 182
    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 164
    nop

    :array_0
    .array-data 4
        0x7f0f0289
        0x7f0f028a
    .end array-data
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/profile/MoreAboutUser;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->g()V

    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/profile/MoreAboutUser;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->i()V

    return-void
.end method

.method private f()Ljava/util/ArrayList;
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

    .line 195
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 196
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->t()Ljava/util/Map;

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

    .line 197
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 198
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-static {v1}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    .line 200
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

    .line 201
    invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    .line 202
    const-string/jumbo v10, "http://"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v9

    invoke-virtual {v7, v9, v10}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    .line 203
    const-string/jumbo v11, "http://"

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 204
    const-string/jumbo v10, "http://"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v9

    invoke-virtual {v7, v9, v10}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 206
    :cond_0
    if-lez v9, :cond_1

    .line 207
    const-string/jumbo v10, "\n\n"

    invoke-virtual {v7, v9, v10}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 200
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 210
    :cond_2
    const-string/jumbo v1, "label"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string/jumbo v0, "value"

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 214
    :cond_3
    return-object v4
.end method

.method private g()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 224
    new-instance v4, Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->h()Lcom/yelp/android/appdata/f;

    move-result-object v0

    const/16 v1, 0x411

    invoke-direct {v4, v0, v1}, Lcom/yelp/android/ui/util/ImageInputHelper;-><init>(Lcom/yelp/android/appdata/f;I)V

    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->b:Landroid/view/View;

    const v1, 0x7f0f04ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 227
    new-instance v1, Lcom/yelp/android/ui/activities/profile/MoreAboutUser$1;

    invoke-direct {v1, p0, v4}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser$1;-><init>(Lcom/yelp/android/ui/activities/profile/MoreAboutUser;Lcom/yelp/android/ui/util/ImageInputHelper;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->b:Landroid/view/View;

    const v2, 0x7f0f04ef

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 238
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v2

    iget-object v5, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v2, v5}, Lcom/yelp/android/appdata/webrequests/co;->a(Lcom/yelp/android/serializable/User;)Z

    move-result v5

    .line 239
    if-eqz v5, :cond_1

    .line 240
    const v2, 0x7f0703df

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    :goto_0
    new-instance v2, Lcom/yelp/android/ui/activities/profile/MoreAboutUser$2;

    sget-object v6, Lcom/yelp/android/analytics/iris/EventIri;->ProfileMoreUserPhotos:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {v2, p0, v6}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser$2;-><init>(Lcom/yelp/android/ui/activities/profile/MoreAboutUser;Lcom/yelp/android/analytics/iris/EventIri;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->b:Landroid/view/View;

    const v6, 0x7f0f04ed

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/yelp/android/ui/panels/SpanOfPhotosView;

    .line 269
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 270
    const/16 v7, 0x416

    const/high16 v8, 0x10000000

    invoke-virtual {p0, v7, v6, v8}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 275
    invoke-virtual {v2, v6, v3}, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->a(Landroid/app/PendingIntent;Lcom/yelp/android/ui/util/aa;)V

    .line 277
    if-nez v5, :cond_2

    .line 288
    :goto_1
    iget-object v4, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/User;->ag()Ljava/util/List;

    move-result-object v4

    const v6, 0x7f0200c6

    invoke-virtual {v2, v4, v6, v3}, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->a(Ljava/util/List;ILandroid/view/View$OnClickListener;)V

    .line 290
    iget-object v3, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/User;->ag()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2}, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->getMaxPhotoCount()I

    move-result v4

    if-gt v3, v4, :cond_3

    .line 291
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    :goto_2
    if-eqz v5, :cond_0

    if-eqz v5, :cond_4

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User;->ag()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2}, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->b()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 298
    :cond_0
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 302
    :goto_3
    return-void

    .line 242
    :cond_1
    const v2, 0x7f0703de

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v7}, Lcom/yelp/android/serializable/User;->Z()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v2, v6}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 277
    :cond_2
    new-instance v3, Lcom/yelp/android/ui/activities/profile/MoreAboutUser$3;

    invoke-direct {v3, p0, v4}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser$3;-><init>(Lcom/yelp/android/ui/activities/profile/MoreAboutUser;Lcom/yelp/android/ui/util/ImageInputHelper;)V

    goto :goto_1

    .line 293
    :cond_3
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 300
    :cond_4
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method private i()V
    .locals 4

    .prologue
    .line 305
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->a:Lcom/yelp/android/appdata/webrequests/fn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->a:Lcom/yelp/android/appdata/webrequests/fn;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/fn;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    :goto_0
    return-void

    .line 309
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fn;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->e:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/User;->ae()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/fn;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->a:Lcom/yelp/android/appdata/webrequests/fn;

    .line 310
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->a:Lcom/yelp/android/appdata/webrequests/fn;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fn;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 3

    .prologue
    .line 343
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->MoreAboutUser:Lcom/yelp/android/analytics/iris/ViewIri;

    .line 344
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/co;->a(Lcom/yelp/android/serializable/User;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->MoreAboutMe:Lcom/yelp/android/analytics/iris/ViewIri;

    .line 347
    :cond_0
    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 315
    sparse-switch p1, :sswitch_data_0

    .line 337
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/YelpListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 317
    :sswitch_0
    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    invoke-static {p3}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->a(Landroid/content/Intent;)I

    move-result v0

    .line 323
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User;->ag()Ljava/util/List;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->a(Landroid/content/Context;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v0

    .line 326
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 330
    :sswitch_1
    if-ne p2, v0, :cond_1

    .line 331
    iput-object p3, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->d:Landroid/content/Intent;

    goto :goto_0

    .line 332
    :cond_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 333
    const v0, 0x7f070486

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 315
    nop

    :sswitch_data_0
    .sparse-switch
        0x411 -> :sswitch_1
        0x416 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 78
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setItemsCanFocus(Z)V

    .line 80
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "I feel so used :("

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->c:Lcom/yelp/android/serializable/User;

    .line 81
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/co;->a(Lcom/yelp/android/serializable/User;)Z

    move-result v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    const v0, 0x7f0703d6

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->setTitle(Ljava/lang/CharSequence;)V

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->c:Lcom/yelp/android/serializable/User;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->a(Lcom/yelp/android/serializable/User;)V

    .line 89
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->b()V

    .line 90
    return-void

    .line 85
    :cond_0
    const v0, 0x7f0703d5

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/User;->Z()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 122
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->onDestroy()V

    .line 123
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->a:Lcom/yelp/android/appdata/webrequests/fn;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->a:Lcom/yelp/android/appdata/webrequests/fn;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fn;->a(Z)V

    .line 125
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->a:Lcom/yelp/android/appdata/webrequests/fn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fn;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 127
    :cond_0
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->hideLoadingDialog()V

    .line 362
    new-instance v0, Lcom/yelp/android/ui/panels/PanelError;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/panels/PanelError;-><init>(Landroid/content/Context;)V

    .line 363
    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/panels/PanelError;->a(Lcom/yelp/android/ui/panels/PanelError$a;)V

    .line 364
    invoke-static {p2}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;->a(Lcom/yelp/android/util/ErrorType;)V

    .line 365
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/ui/util/e;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 366
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->onPause()V

    .line 105
    const-string/jumbo v0, "update_user_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->a:Lcom/yelp/android/appdata/webrequests/fn;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 106
    return-void
.end method

.method protected onPostResume()V
    .locals 4

    .prologue
    .line 131
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->onPostResume()V

    .line 132
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->d:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->d:Landroid/content/Intent;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->f:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v2

    const-string/jumbo v3, "dialog_add_photo"

    invoke-static {v0, p0, v1, v2, v3}, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;->a(Landroid/content/Intent;Lcom/yelp/android/ui/activities/support/YelpActivity;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 140
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->d:Landroid/content/Intent;

    .line 141
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 117
    const-string/jumbo v0, "I feel so used :("

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->c:Lcom/yelp/android/serializable/User;

    .line 118
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 94
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->onResume()V

    .line 96
    const-string/jumbo v0, "update_user_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->a:Lcom/yelp/android/appdata/webrequests/fn;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->e:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/fn;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->a:Lcom/yelp/android/appdata/webrequests/fn;

    .line 97
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->a:Lcom/yelp/android/appdata/webrequests/fn;

    if-nez v0, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->i()V

    .line 100
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 111
    const-string/jumbo v0, "I feel so used :("

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 112
    return-void
.end method

.method public q_()V
    .locals 2

    .prologue
    .line 353
    const v0, 0x102002b

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 355
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->i()V

    .line 356
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->b()V

    .line 357
    return-void
.end method
