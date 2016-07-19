.class public Lcom/yelp/android/ui/activities/talk/TalkViewPost;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "TalkViewPost.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/talk/c;


# instance fields
.field private a:Lcom/yelp/android/ui/activities/talk/b;

.field private b:Lcom/yelp/android/ui/activities/talk/b;

.field private c:Lcom/yelp/android/serializable/TalkTopic;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Z

.field private g:Landroid/view/View$OnClickListener;

.field private h:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/bv/c$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->f:Z

    .line 362
    new-instance v0, Lcom/yelp/android/ui/activities/talk/TalkViewPost$7;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost$7;-><init>(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->g:Landroid/view/View$OnClickListener;

    .line 372
    new-instance v0, Lcom/yelp/android/ui/activities/talk/TalkViewPost$8;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost$8;-><init>(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->h:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/TalkTopic;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    const-string/jumbo v1, "topic"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 71
    return-object v0
.end method

.method private a(Landroid/widget/TextView;I)V
    .locals 4

    .prologue
    .line 338
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    add-int/lit8 v0, v0, -0x3

    invoke-interface {v2, v3, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0706e1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    return-void
.end method

.method private a(Landroid/widget/TextView;Landroid/widget/Button;)V
    .locals 3

    .prologue
    .line 304
    new-instance v0, Lcom/yelp/android/ui/activities/talk/TalkViewPost$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/yelp/android/ui/activities/talk/TalkViewPost$5;-><init>(Lcom/yelp/android/ui/activities/talk/TalkViewPost;Landroid/widget/TextView;Landroid/widget/Button;)V

    .line 322
    new-instance v1, Lcom/yelp/android/ui/activities/talk/TalkViewPost$6;

    invoke-direct {v1, p0, p2, p1}, Lcom/yelp/android/ui/activities/talk/TalkViewPost$6;-><init>(Lcom/yelp/android/ui/activities/talk/TalkViewPost;Landroid/widget/Button;Landroid/widget/TextView;)V

    .line 333
    invoke-virtual {p1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 334
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->j()V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/talk/TalkViewPost;Landroid/widget/TextView;I)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a(Landroid/widget/TextView;I)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/talk/TalkViewPost;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->i()V

    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->f:Z

    return v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)Lcom/yelp/android/serializable/TalkTopic;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->c:Lcom/yelp/android/serializable/TalkTopic;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)Lcom/yelp/android/ui/activities/talk/b;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a:Lcom/yelp/android/ui/activities/talk/b;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)Lcom/yelp/android/ui/activities/talk/b;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->b:Lcom/yelp/android/ui/activities/talk/b;

    return-object v0
.end method

.method private f()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 247
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 248
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->b:Lcom/yelp/android/ui/activities/talk/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/b;->b()V

    .line 254
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a:Lcom/yelp/android/ui/activities/talk/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/b;->b()V

    .line 257
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a:Lcom/yelp/android/ui/activities/talk/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/b;->f()Ljava/lang/String;

    move-result-object v0

    .line 258
    iget-object v2, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->b:Lcom/yelp/android/ui/activities/talk/b;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/talk/b;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 259
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->b:Lcom/yelp/android/ui/activities/talk/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/b;->f()Ljava/lang/String;

    move-result-object v0

    .line 261
    :cond_1
    if-nez v0, :cond_2

    .line 262
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->c:Lcom/yelp/android/serializable/TalkTopic;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/TalkTopic;->n()Ljava/lang/String;

    move-result-object v0

    .line 265
    :cond_2
    iget-object v2, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->h:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v1, v0, v2}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/bv/c;

    move-result-object v0

    .line 266
    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/bv/c;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 267
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->b:Lcom/yelp/android/ui/activities/talk/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/b;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 268
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->b:Lcom/yelp/android/ui/activities/talk/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/b;->d()Lcom/yelp/android/ui/activities/talk/a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/activities/talk/a;->a(Z)V

    .line 273
    :goto_1
    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a(Z)V

    .line 274
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->d:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/yelp/android/ui/util/as;->b(Landroid/view/View;)V

    goto :goto_0

    .line 270
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a:Lcom/yelp/android/ui/activities/talk/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/b;->d()Lcom/yelp/android/ui/activities/talk/a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/activities/talk/a;->a(Z)V

    goto :goto_1
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method private g()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 278
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->b()I

    move-result v2

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 280
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 281
    const v0, 0x7f0f01f0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 282
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->b()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 283
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 286
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/view/View;

    aput-object v0, v3, v1

    aput-object v2, v3, v4

    .line 287
    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 288
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a(Landroid/view/View;)V

    .line 291
    const v0, 0x7f0f049f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 292
    iget-object v5, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->c:Lcom/yelp/android/serializable/TalkTopic;

    invoke-virtual {v5}, Lcom/yelp/android/serializable/TalkTopic;->o()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 295
    const v0, 0x7f0f04a1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 296
    const v5, 0x7f0f046e

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 297
    iget-object v5, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->c:Lcom/yelp/android/serializable/TalkTopic;

    invoke-virtual {v5}, Lcom/yelp/android/serializable/TalkTopic;->m()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 299
    invoke-direct {p0, v1, v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a(Landroid/widget/TextView;Landroid/widget/Button;)V

    .line 287
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 301
    :cond_0
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->getHelper()Lcom/yelp/android/ui/activities/support/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/b;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->f()V

    .line 355
    :goto_0
    return-void

    .line 348
    :cond_0
    const v0, 0x7f070208

    const v1, 0x7f0705ba

    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/app/Activity;II)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x418

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 358
    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 360
    return-void

    .line 358
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;ILcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/bv/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/bv/c$b;",
            ">;)",
            "Lcom/yelp/android/bv/c;"
        }
    .end annotation

    .prologue
    .line 169
    new-instance v0, Lcom/yelp/android/bv/c$a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->c:Lcom/yelp/android/serializable/TalkTopic;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/TalkTopic;->n()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/yelp/android/bv/c$a;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/bv/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/bv/c$b;",
            ">;)",
            "Lcom/yelp/android/bv/c;"
        }
    .end annotation

    .prologue
    .line 236
    new-instance v0, Lcom/yelp/android/bv/c$c;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->c:Lcom/yelp/android/serializable/TalkTopic;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/TalkTopic;->n()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/yelp/android/bv/c$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    return-object v0
.end method

.method protected final a(I)V
    .locals 2

    .prologue
    .line 192
    const/16 v0, 0x32

    if-le p1, v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a:Lcom/yelp/android/ui/activities/talk/b;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->b:Lcom/yelp/android/ui/activities/talk/b;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/talk/b;->a(Lcom/yelp/android/ui/activities/talk/b;)V

    .line 196
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a:Lcom/yelp/android/ui/activities/talk/b;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/talk/b;->a(I)V

    .line 198
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->b:Lcom/yelp/android/ui/activities/talk/b;

    const/4 v1, -0x5

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/talk/b;->a(I)V

    .line 204
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a:Lcom/yelp/android/ui/activities/talk/b;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/talk/b;->a(I)V

    .line 202
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->b:Lcom/yelp/android/ui/activities/talk/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/b;->c()V

    goto :goto_0
.end method

.method protected a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 211
    const v0, 0x7f0f043c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 212
    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->c:Lcom/yelp/android/serializable/TalkTopic;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/TalkTopic;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    const v1, 0x7f070281

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/yelp/android/serializable/User;->j()Ljava/util/Date;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    :goto_0
    const v0, 0x7f0f025a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->c:Lcom/yelp/android/serializable/TalkTopic;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/TalkTopic;->j()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200c6

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 221
    const v0, 0x7f0f025c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->c:Lcom/yelp/android/serializable/TalkTopic;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/TalkTopic;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    const v0, 0x7f0f0250

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->c:Lcom/yelp/android/serializable/TalkTopic;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/TalkTopic;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    const v0, 0x7f0f04fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->c:Lcom/yelp/android/serializable/TalkTopic;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/TalkTopic;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    const v0, 0x7f0f04fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->c:Lcom/yelp/android/serializable/TalkTopic;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/TalkTopic;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    const v0, 0x7f0f0360

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/yelp/android/util/StringUtils$Format;->ABBREVIATED:Lcom/yelp/android/util/StringUtils$Format;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->c:Lcom/yelp/android/serializable/TalkTopic;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/TalkTopic;->q()Ljava/util/Date;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    return-void

    .line 217
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 3

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->disableLoading()V

    .line 179
    const v0, 0x7f0705b4

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070452

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Landroid/support/v4/app/l;)V

    .line 184
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->c:Lcom/yelp/android/serializable/TalkTopic;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/TalkTopic;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a(I)V

    .line 244
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 174
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->j()V

    .line 175
    return-void
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 207
    const v0, 0x7f0301b7

    return v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->TalkViewPost:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/YelpListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 150
    const/16 v0, 0x418

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->f()V

    .line 153
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 76
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v0, 0x7f030058

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->setContentView(I)V

    .line 79
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "topic"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/TalkTopic;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->c:Lcom/yelp/android/serializable/TalkTopic;

    .line 80
    new-instance v0, Lcom/yelp/android/ui/activities/talk/b;

    invoke-direct {v0, p0, p0}, Lcom/yelp/android/ui/activities/talk/b;-><init>(Lcom/yelp/android/ui/activities/talk/c;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a:Lcom/yelp/android/ui/activities/talk/b;

    .line 81
    new-instance v0, Lcom/yelp/android/ui/activities/talk/b;

    invoke-direct {v0, p0, p0}, Lcom/yelp/android/ui/activities/talk/b;-><init>(Lcom/yelp/android/ui/activities/talk/c;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->b:Lcom/yelp/android/ui/activities/talk/b;

    .line 83
    new-instance v0, Lcom/yelp/android/ui/util/aj;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/aj;-><init>()V

    .line 84
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a:Lcom/yelp/android/ui/activities/talk/b;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/aj;->a(ILandroid/widget/BaseAdapter;)V

    .line 85
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a:Lcom/yelp/android/ui/activities/talk/b;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/talk/b;->d()Lcom/yelp/android/ui/activities/talk/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/aj;->a(ILandroid/widget/BaseAdapter;)V

    .line 87
    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->b:Lcom/yelp/android/ui/activities/talk/b;

    invoke-virtual {v0, v3, v1}, Lcom/yelp/android/ui/util/aj;->a(ILandroid/widget/BaseAdapter;)V

    .line 88
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->b:Lcom/yelp/android/ui/activities/talk/b;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/talk/b;->d()Lcom/yelp/android/ui/activities/talk/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/aj;->a(ILandroid/widget/BaseAdapter;)V

    .line 91
    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->b:Lcom/yelp/android/ui/activities/talk/b;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/util/aj;->a(I)Lcom/yelp/android/ui/util/aj$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/talk/b;->a(Lcom/yelp/android/ui/util/aj$b;)V

    .line 93
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    .line 94
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    invoke-virtual {v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 97
    const v0, 0x7f0f04cd

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->d:Landroid/widget/TextView;

    .line 98
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/yelp/android/ui/activities/talk/TalkViewPost$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost$1;-><init>(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 112
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/yelp/android/ui/activities/talk/TalkViewPost$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost$2;-><init>(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 119
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/yelp/android/ui/activities/talk/TalkViewPost$3;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost$3;-><init>(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 131
    const v0, 0x7f0f04ce

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->e:Landroid/view/View;

    .line 132
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->e:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/ui/activities/talk/TalkViewPost$4;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost$4;-><init>(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a(Z)V

    .line 140
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->g()V

    .line 142
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->c:Lcom/yelp/android/serializable/TalkTopic;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/TalkTopic;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public p_()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a:Lcom/yelp/android/ui/activities/talk/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/b;->clear()V

    .line 158
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->b:Lcom/yelp/android/ui/activities/talk/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/b;->clear()V

    .line 159
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->c:Lcom/yelp/android/serializable/TalkTopic;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/TalkTopic;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a(Ljava/lang/String;)V

    .line 160
    return-void
.end method
