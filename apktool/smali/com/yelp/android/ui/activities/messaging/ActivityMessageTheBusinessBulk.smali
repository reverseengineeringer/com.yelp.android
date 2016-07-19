.class public Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityMessageTheBusinessBulk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/activities/messaging/b;

.field private b:Lcom/yelp/android/serializable/YelpBusiness;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/yelp/android/appdata/webrequests/messaging/i;

.field private f:Lcom/yelp/android/appdata/webrequests/messaging/j;

.field private g:Lcom/yelp/android/cc/c;

.field private h:Landroid/content/Intent;

.field private i:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;

.field private final j:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/messaging/i$a;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/messaging/j$a;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 327
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$3;-><init>(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->j:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 359
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$4;-><init>(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->k:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 381
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$5;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$5;-><init>(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->l:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$a;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 101
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    const-string/jumbo v1, "business"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 103
    const-string/jumbo v1, "bulk_message_action"

    sget-object v2, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;->COMPOSE_MESSAGE_ON_COMPLETION:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 105
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 84
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    const-string/jumbo v1, "business"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 86
    const-string/jumbo v1, "message_data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 87
    const-string/jumbo v1, "bulk_message_action"

    sget-object v2, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;->SEND_DRAFT_ON_COMPLETION:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 88
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;Lcom/yelp/android/appdata/webrequests/messaging/j;)Lcom/yelp/android/appdata/webrequests/messaging/j;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->f:Lcom/yelp/android/appdata/webrequests/messaging/j;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->b:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->c:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->d:Ljava/util/Set;

    return-object p1
.end method

.method private a()V
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->e:Lcom/yelp/android/appdata/webrequests/messaging/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->e:Lcom/yelp/android/appdata/webrequests/messaging/i;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/messaging/i;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 233
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/messaging/i;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->j:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/messaging/i;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->e:Lcom/yelp/android/appdata/webrequests/messaging/i;

    .line 235
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->e:Lcom/yelp/android/appdata/webrequests/messaging/i;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/messaging/i;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;)Lcom/yelp/android/ui/activities/messaging/b;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->a:Lcom/yelp/android/ui/activities/messaging/b;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->h:Landroid/content/Intent;

    const-string/jumbo v1, "confirmation_main"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 241
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->h:Landroid/content/Intent;

    const-string/jumbo v2, "confirmation_sub"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    const v0, 0x7f0f00a9

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    const v0, 0x7f0f036b

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 249
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    :cond_1
    const v0, 0x7f0f0024

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$1;-><init>(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;)Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->i:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 267
    const v0, 0x7f0f0379

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 268
    const v0, 0x7f0f0024

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 269
    return-void
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method private d()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 273
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->i:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;

    sget-object v1, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;->SEND_DRAFT_ON_COMPLETION:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;

    if-ne v0, v1, :cond_0

    .line 274
    const v0, 0x7f080035

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 287
    :goto_0
    const v0, 0x7f0f037a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/b;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->d:Ljava/util/Set;

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/ui/activities/messaging/b;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->a:Lcom/yelp/android/ui/activities/messaging/b;

    .line 289
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->a:Lcom/yelp/android/ui/activities/messaging/b;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/b;->a(Ljava/util/List;)V

    .line 290
    const v0, 0x7f0f037c

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->a:Lcom/yelp/android/ui/activities/messaging/b;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 292
    const v0, 0x7f0f037b

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 293
    new-instance v1, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$2;-><init>(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    return-void

    .line 280
    :cond_0
    const v0, 0x7f080034

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v2}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->h:Landroid/content/Intent;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 311
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->f:Lcom/yelp/android/appdata/webrequests/messaging/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->f:Lcom/yelp/android/appdata/webrequests/messaging/j;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/messaging/j;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    :goto_0
    return-void

    .line 315
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->enableLoading()V

    .line 316
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 318
    const v0, 0x7f070395

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x418

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->g:Lcom/yelp/android/cc/c;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->b:Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->l:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$a;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/cc/c;->a(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/database/h$b;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->d:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->d()V

    return-void
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;)Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->k:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    return-object v0
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;)Lcom/yelp/android/appdata/webrequests/messaging/j;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->f:Lcom/yelp/android/appdata/webrequests/messaging/j;

    return-object v0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 226
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessNewMessageMultibiz:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 213
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 214
    if-ne p2, v1, :cond_1

    const/16 v0, 0x418

    if-ne p1, v0, :cond_1

    .line 215
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->e()V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    if-ne p2, v1, :cond_0

    const/16 v0, 0x40b

    if-ne p1, v0, :cond_0

    .line 219
    invoke-virtual {p0, v1, p3}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->setResult(ILandroid/content/Intent;)V

    .line 220
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "business"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->b:Lcom/yelp/android/serializable/YelpBusiness;

    .line 112
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "message_data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->h:Landroid/content/Intent;

    .line 113
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "bulk_message_action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->i:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;

    .line 116
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/g;->h()Lcom/yelp/android/cc/c;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->g:Lcom/yelp/android/cc/c;

    .line 118
    if-nez p1, :cond_1

    .line 119
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->a()V

    .line 131
    :cond_0
    :goto_0
    const v0, 0x7f0703e0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->setTitle(I)V

    .line 132
    const v0, 0x7f0300f4

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->setContentView(I)V

    .line 134
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->i:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;

    sget-object v1, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;->SEND_DRAFT_ON_COMPLETION:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->b()V

    .line 139
    :goto_1
    return-void

    .line 121
    :cond_1
    const-string/jumbo v0, "saved_suggestions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->c:Ljava/util/ArrayList;

    .line 123
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->d:Ljava/util/Set;

    .line 124
    const-string/jumbo v0, "saved_selections"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_0

    .line 127
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->d:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 137
    :cond_2
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->c()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 163
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 164
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->i:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;

    sget-object v1, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;->SEND_DRAFT_ON_COMPLETION:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100024

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 170
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->i:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;

    sget-object v1, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;->COMPOSE_MESSAGE_ON_COMPLETION:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10001c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 175
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 197
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    .line 177
    :pswitch_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->a:Lcom/yelp/android/ui/activities/messaging/b;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/messaging/b;->c()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 178
    const v1, 0x7f07041c

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    goto :goto_1

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->i:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;

    sget-object v1, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;->SEND_DRAFT_ON_COMPLETION:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->e()V

    .line 186
    const/4 v0, 0x1

    goto :goto_1

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->i:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;

    sget-object v1, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;->COMPOSE_MESSAGE_ON_COMPLETION:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->a:Lcom/yelp/android/ui/activities/messaging/b;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/messaging/b;->c()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 191
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {p0, v1, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x40b

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x7f0f0607
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 156
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 157
    const-string/jumbo v0, "info_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->e:Lcom/yelp/android/appdata/webrequests/messaging/i;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 158
    const-string/jumbo v0, "send_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->f:Lcom/yelp/android/appdata/webrequests/messaging/j;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 159
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 143
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 144
    const-string/jumbo v0, "info_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->e:Lcom/yelp/android/appdata/webrequests/messaging/i;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->j:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/messaging/i;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->e:Lcom/yelp/android/appdata/webrequests/messaging/i;

    .line 145
    const-string/jumbo v0, "send_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->f:Lcom/yelp/android/appdata/webrequests/messaging/j;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->k:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/messaging/j;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->f:Lcom/yelp/android/appdata/webrequests/messaging/j;

    .line 147
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->e:Lcom/yelp/android/appdata/webrequests/messaging/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->e:Lcom/yelp/android/appdata/webrequests/messaging/i;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/messaging/i;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->enableLoading()V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->d()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 202
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 203
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    const-string/jumbo v0, "saved_suggestions"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 205
    const-string/jumbo v0, "saved_selections"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->a:Lcom/yelp/android/ui/activities/messaging/b;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/messaging/b;->c()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 209
    :cond_0
    return-void
.end method
