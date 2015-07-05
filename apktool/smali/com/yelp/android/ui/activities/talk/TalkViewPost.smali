.class public Lcom/yelp/android/ui/activities/talk/TalkViewPost;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "TalkViewPost.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/talk/v;


# instance fields
.field private a:Lcom/yelp/android/ui/activities/talk/q;

.field private b:Lcom/yelp/android/ui/activities/talk/q;

.field private c:Lcom/yelp/android/serializable/TalkTopic;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Z

.field private g:Landroid/view/View$OnClickListener;

.field private h:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/aw/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->f:Z

    .line 342
    new-instance v0, Lcom/yelp/android/ui/activities/talk/ae;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/talk/ae;-><init>(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->g:Landroid/view/View$OnClickListener;

    .line 350
    new-instance v0, Lcom/yelp/android/ui/activities/talk/af;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/talk/af;-><init>(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->h:Lcom/yelp/android/appdata/webrequests/m;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/TalkTopic;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    const-string/jumbo v1, "extra.topic"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 72
    return-object v0
.end method

.method private a(Landroid/widget/TextView;I)V
    .locals 4

    .prologue
    .line 321
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 322
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

    const v1, 0x7f070238

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    return-void
.end method

.method private a(Landroid/widget/TextView;Landroid/widget/Button;)V
    .locals 3

    .prologue
    .line 290
    new-instance v0, Lcom/yelp/android/ui/activities/talk/ac;

    invoke-direct {v0, p0, p1, p2}, Lcom/yelp/android/ui/activities/talk/ac;-><init>(Lcom/yelp/android/ui/activities/talk/TalkViewPost;Landroid/widget/TextView;Landroid/widget/Button;)V

    .line 306
    new-instance v1, Lcom/yelp/android/ui/activities/talk/ad;

    invoke-direct {v1, p0, p2, p1}, Lcom/yelp/android/ui/activities/talk/ad;-><init>(Lcom/yelp/android/ui/activities/talk/TalkViewPost;Landroid/widget/Button;Landroid/widget/TextView;)V

    .line 316
    invoke-virtual {p1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 317
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->j()V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/talk/TalkViewPost;Landroid/widget/TextView;I)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a(Landroid/widget/TextView;I)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/talk/TalkViewPost;Z)Z
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->h()V

    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->f:Z

    return v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)Lcom/yelp/android/serializable/TalkTopic;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->c:Lcom/yelp/android/serializable/TalkTopic;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)Lcom/yelp/android/ui/activities/talk/q;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a:Lcom/yelp/android/ui/activities/talk/q;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)Lcom/yelp/android/ui/activities/talk/q;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->b:Lcom/yelp/android/ui/activities/talk/q;

    return-object v0
.end method

.method private f()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 234
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->b:Lcom/yelp/android/ui/activities/talk/q;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/q;->b()V

    .line 241
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a:Lcom/yelp/android/ui/activities/talk/q;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/q;->b()V

    .line 244
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a:Lcom/yelp/android/ui/activities/talk/q;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/q;->f()Ljava/lang/String;

    move-result-object v0

    .line 245
    iget-object v2, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->b:Lcom/yelp/android/ui/activities/talk/q;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/talk/q;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 246
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->b:Lcom/yelp/android/ui/activities/talk/q;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/q;->f()Ljava/lang/String;

    move-result-object v0

    .line 248
    :cond_1
    if-nez v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->c:Lcom/yelp/android/serializable/TalkTopic;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/TalkTopic;->getId()Ljava/lang/String;

    move-result-object v0

    .line 252
    :cond_2
    iget-object v2, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->h:Lcom/yelp/android/appdata/webrequests/m;

    invoke-virtual {p0, v1, v0, v2}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/aw/f;

    move-result-object v0

    .line 253
    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/aw/f;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 254
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->b:Lcom/yelp/android/ui/activities/talk/q;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/q;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 255
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->b:Lcom/yelp/android/ui/activities/talk/q;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/q;->d()Lcom/yelp/android/ui/activities/talk/j;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/activities/talk/j;->a(Z)V

    .line 260
    :goto_1
    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a(Z)V

    .line 261
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->d:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/yelp/android/ui/util/cr;->b(Landroid/view/View;)V

    goto :goto_0

    .line 257
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a:Lcom/yelp/android/ui/activities/talk/q;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/q;->d()Lcom/yelp/android/ui/activities/talk/j;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/activities/talk/j;->a(Z)V

    goto :goto_1
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method private g()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 265
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->c()I

    move-result v2

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 266
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 267
    const v0, 0x7f0c01c0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 268
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->c()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 269
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 272
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/view/View;

    aput-object v0, v3, v1

    aput-object v2, v3, v4

    .line 273
    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 274
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a(Landroid/view/View;)V

    .line 277
    const v0, 0x7f0c03bb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 278
    iget-object v5, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->c:Lcom/yelp/android/serializable/TalkTopic;

    invoke-virtual {v5}, Lcom/yelp/android/serializable/TalkTopic;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 281
    const v0, 0x7f0c03bd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 282
    const v5, 0x7f0c0391

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 283
    iget-object v5, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->c:Lcom/yelp/android/serializable/TalkTopic;

    invoke-virtual {v5}, Lcom/yelp/android/serializable/TalkTopic;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 285
    invoke-direct {p0, v1, v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a(Landroid/widget/TextView;Landroid/widget/Button;)V

    .line 273
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 287
    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->getHelper()Lcom/yelp/android/ui/activities/support/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/h;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->f()V

    .line 336
    :goto_0
    return-void

    .line 333
    :cond_0
    const v0, 0x7f0705d2

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x413

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 339
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

    .line 340
    return-void

    .line 339
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;ILcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/aw/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/aw/h;",
            ">;)",
            "Lcom/yelp/android/aw/f;"
        }
    .end annotation

    .prologue
    .line 163
    new-instance v0, Lcom/yelp/android/aw/g;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->c:Lcom/yelp/android/serializable/TalkTopic;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/TalkTopic;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/yelp/android/aw/g;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/yelp/android/appdata/webrequests/m;)V

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/aw/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/aw/h;",
            ">;)",
            "Lcom/yelp/android/aw/f;"
        }
    .end annotation

    .prologue
    .line 223
    new-instance v0, Lcom/yelp/android/aw/i;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->c:Lcom/yelp/android/serializable/TalkTopic;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/TalkTopic;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/yelp/android/aw/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    return-object v0
.end method

.method protected final a(I)V
    .locals 2

    .prologue
    .line 183
    const/16 v0, 0x32

    if-le p1, v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a:Lcom/yelp/android/ui/activities/talk/q;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->b:Lcom/yelp/android/ui/activities/talk/q;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/talk/q;->a(Lcom/yelp/android/ui/activities/talk/q;)V

    .line 187
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a:Lcom/yelp/android/ui/activities/talk/q;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/talk/q;->a(I)V

    .line 189
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->b:Lcom/yelp/android/ui/activities/talk/q;

    const/4 v1, -0x5

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/talk/q;->a(I)V

    .line 195
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a:Lcom/yelp/android/ui/activities/talk/q;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/talk/q;->a(I)V

    .line 193
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->b:Lcom/yelp/android/ui/activities/talk/q;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/q;->c()V

    goto :goto_0
.end method

.method protected a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 202
    const v0, 0x7f0c0362

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 203
    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->c:Lcom/yelp/android/serializable/TalkTopic;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/TalkTopic;->isUserElite()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    const v1, 0x7f070230

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    :goto_0
    const v0, 0x7f0c0246

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->c:Lcom/yelp/android/serializable/TalkTopic;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/TalkTopic;->getUserPhotoUrl()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02009b

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 210
    const v0, 0x7f0c0413

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->c:Lcom/yelp/android/serializable/TalkTopic;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/TalkTopic;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    const v0, 0x7f0c0414

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->c:Lcom/yelp/android/serializable/TalkTopic;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/TalkTopic;->getUserFriendCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    const v0, 0x7f0c0415

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->c:Lcom/yelp/android/serializable/TalkTopic;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/TalkTopic;->getUserReviewCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    const v0, 0x7f0c0416

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->c:Lcom/yelp/android/serializable/TalkTopic;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/TalkTopic;->getUserMediaCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    const v0, 0x7f0c02eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/yelp/android/util/StringUtils$Format;->ABBREVIATED:Lcom/yelp/android/util/StringUtils$Format;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->c:Lcom/yelp/android/serializable/TalkTopic;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/TalkTopic;->getTimeCreated()Ljava/util/Date;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    return-void

    .line 206
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 3

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->disableLoading()V

    .line 173
    const v0, 0x7f0705cb

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07041d

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 175
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->c:Lcom/yelp/android/serializable/TalkTopic;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/TalkTopic;->getReplyCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a(I)V

    .line 231
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 168
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->j()V

    .line 169
    return-void
.end method

.method public a_()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a:Lcom/yelp/android/ui/activities/talk/q;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/q;->clear()V

    .line 152
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->b:Lcom/yelp/android/ui/activities/talk/q;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/q;->clear()V

    .line 153
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->c:Lcom/yelp/android/serializable/TalkTopic;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/TalkTopic;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method protected c()I
    .locals 1

    .prologue
    .line 198
    const v0, 0x7f030152

    return v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->TalkViewPost:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/YelpListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 144
    const/16 v0, 0x413

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->f()V

    .line 147
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 77
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v0, 0x7f03004f

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->setContentView(I)V

    .line 80
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.topic"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/TalkTopic;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->c:Lcom/yelp/android/serializable/TalkTopic;

    .line 81
    new-instance v0, Lcom/yelp/android/ui/activities/talk/q;

    invoke-direct {v0, p0, p0}, Lcom/yelp/android/ui/activities/talk/q;-><init>(Lcom/yelp/android/ui/activities/talk/v;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a:Lcom/yelp/android/ui/activities/talk/q;

    .line 82
    new-instance v0, Lcom/yelp/android/ui/activities/talk/q;

    invoke-direct {v0, p0, p0}, Lcom/yelp/android/ui/activities/talk/q;-><init>(Lcom/yelp/android/ui/activities/talk/v;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->b:Lcom/yelp/android/ui/activities/talk/q;

    .line 84
    new-instance v0, Lcom/yelp/android/ui/util/bs;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/bs;-><init>()V

    .line 85
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a:Lcom/yelp/android/ui/activities/talk/q;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/bs;->a(ILandroid/widget/BaseAdapter;)V

    .line 86
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a:Lcom/yelp/android/ui/activities/talk/q;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/talk/q;->d()Lcom/yelp/android/ui/activities/talk/j;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/bs;->a(ILandroid/widget/BaseAdapter;)V

    .line 88
    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->b:Lcom/yelp/android/ui/activities/talk/q;

    invoke-virtual {v0, v3, v1}, Lcom/yelp/android/ui/util/bs;->a(ILandroid/widget/BaseAdapter;)V

    .line 89
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->b:Lcom/yelp/android/ui/activities/talk/q;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/talk/q;->d()Lcom/yelp/android/ui/activities/talk/j;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/bs;->a(ILandroid/widget/BaseAdapter;)V

    .line 91
    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->b:Lcom/yelp/android/ui/activities/talk/q;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/util/bs;->a(I)Lcom/yelp/android/ui/util/bv;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/talk/q;->a(Lcom/yelp/android/ui/util/bv;)V

    .line 93
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    .line 94
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    invoke-virtual {v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 97
    const v0, 0x7f0c03ea

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->d:Landroid/widget/TextView;

    .line 98
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/yelp/android/ui/activities/talk/y;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/talk/y;-><init>(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 110
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/yelp/android/ui/activities/talk/z;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/talk/z;-><init>(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 116
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/yelp/android/ui/activities/talk/aa;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/talk/aa;-><init>(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 126
    const v0, 0x7f0c03eb

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->e:Landroid/view/View;

    .line 127
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->e:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/ui/activities/talk/ab;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/talk/ab;-><init>(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a(Z)V

    .line 134
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->g()V

    .line 136
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->c:Lcom/yelp/android/serializable/TalkTopic;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/TalkTopic;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a(Ljava/lang/String;)V

    .line 137
    return-void
.end method
