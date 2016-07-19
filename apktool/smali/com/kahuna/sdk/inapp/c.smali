.class public Lcom/kahuna/sdk/inapp/c;
.super Ljava/lang/Object;
.source "RichInAppMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kahuna/sdk/inapp/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lcom/kahuna/sdk/inapp/c;

.field private static g:Landroid/content/Context;


# instance fields
.field private f:Lcom/kahuna/sdk/inapp/RichInAppMessage;

.field private h:Landroid/app/Dialog;

.field private i:Landroid/app/Activity;

.field private j:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 68
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "system"

    aput-object v1, v0, v4

    const-string/jumbo v1, "fullscreen"

    aput-object v1, v0, v3

    const-string/jumbo v1, "modal"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string/jumbo v2, "slider"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/kahuna/sdk/inapp/c;->a:Ljava/util/List;

    .line 70
    new-array v0, v5, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/kahuna/sdk/inapp/c;->b:Ljava/util/List;

    .line 71
    new-array v0, v3, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/kahuna/sdk/inapp/c;->c:Ljava/util/List;

    .line 72
    new-array v0, v3, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/kahuna/sdk/inapp/c;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    return-void
.end method

.method static synthetic a(Lcom/kahuna/sdk/inapp/c;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/kahuna/sdk/inapp/c;->i:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic a(Lcom/kahuna/sdk/inapp/c;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/kahuna/sdk/inapp/c;->h:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic a(Lcom/kahuna/sdk/inapp/c;)Lcom/kahuna/sdk/inapp/RichInAppMessage;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kahuna/sdk/inapp/c;->f:Lcom/kahuna/sdk/inapp/RichInAppMessage;

    return-object v0
.end method

.method static synthetic a(Lcom/kahuna/sdk/inapp/c;Lcom/kahuna/sdk/inapp/RichInAppMessage;)Lcom/kahuna/sdk/inapp/RichInAppMessage;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/kahuna/sdk/inapp/c;->f:Lcom/kahuna/sdk/inapp/RichInAppMessage;

    return-object p1
.end method

.method static synthetic a()Ljava/util/List;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/kahuna/sdk/inapp/c;->a:Ljava/util/List;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 338
    invoke-static {}, Lcom/kahuna/sdk/inapp/c;->f()Lcom/kahuna/sdk/inapp/c;

    move-result-object v0

    iget-object v0, v0, Lcom/kahuna/sdk/inapp/c;->i:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 339
    invoke-static {}, Lcom/kahuna/sdk/inapp/c;->f()Lcom/kahuna/sdk/inapp/c;

    move-result-object v0

    invoke-static {}, Lcom/kahuna/sdk/inapp/c;->f()Lcom/kahuna/sdk/inapp/c;

    move-result-object v1

    iget-object v1, v1, Lcom/kahuna/sdk/inapp/c;->i:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kahuna/sdk/inapp/c;->a(Landroid/app/Activity;Z)V

    .line 340
    invoke-static {}, Lcom/kahuna/sdk/inapp/c;->f()Lcom/kahuna/sdk/inapp/c;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/kahuna/sdk/inapp/c;->i:Landroid/app/Activity;

    .line 343
    :cond_0
    invoke-static {}, Lcom/kahuna/sdk/inapp/c;->f()Lcom/kahuna/sdk/inapp/c;

    move-result-object v0

    iget-object v0, v0, Lcom/kahuna/sdk/inapp/c;->f:Lcom/kahuna/sdk/inapp/RichInAppMessage;

    if-eqz v0, :cond_1

    .line 344
    invoke-static {}, Lcom/kahuna/sdk/inapp/c;->f()Lcom/kahuna/sdk/inapp/c;

    move-result-object v0

    iget-object v0, v0, Lcom/kahuna/sdk/inapp/c;->f:Lcom/kahuna/sdk/inapp/RichInAppMessage;

    invoke-static {v0, p0}, Lcom/kahuna/sdk/inapp/c;->a(Lcom/kahuna/sdk/inapp/RichInAppMessage;Landroid/app/Activity;)V

    .line 346
    :cond_1
    invoke-static {}, Lcom/kahuna/sdk/inapp/c;->f()Lcom/kahuna/sdk/inapp/c;

    move-result-object v0

    iput-object p0, v0, Lcom/kahuna/sdk/inapp/c;->j:Landroid/app/Activity;

    .line 347
    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/kahuna/sdk/inapp/RichInAppMessage;)V
    .locals 2

    .prologue
    .line 110
    invoke-virtual {p2}, Lcom/kahuna/sdk/inapp/RichInAppMessage;->e()I

    move-result v0

    if-gtz v0, :cond_1

    .line 111
    invoke-static {}, Lcom/kahuna/sdk/inapp/c;->f()Lcom/kahuna/sdk/inapp/c;

    move-result-object v0

    iget-object v0, v0, Lcom/kahuna/sdk/inapp/c;->f:Lcom/kahuna/sdk/inapp/RichInAppMessage;

    if-ne v0, p2, :cond_0

    .line 112
    invoke-static {}, Lcom/kahuna/sdk/inapp/c;->f()Lcom/kahuna/sdk/inapp/c;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/kahuna/sdk/inapp/c;->f:Lcom/kahuna/sdk/inapp/RichInAppMessage;

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-virtual {p2}, Lcom/kahuna/sdk/inapp/RichInAppMessage;->f()V

    .line 119
    new-instance v0, Lcom/kahuna/sdk/inapp/c$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/kahuna/sdk/inapp/c$1;-><init>(Lcom/kahuna/sdk/inapp/c;Landroid/app/Activity;Lcom/kahuna/sdk/inapp/RichInAppMessage;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;Z)V
    .locals 1

    .prologue
    .line 612
    if-eqz p1, :cond_0

    .line 613
    new-instance v0, Lcom/kahuna/sdk/inapp/c$2;

    invoke-direct {v0, p0, p2}, Lcom/kahuna/sdk/inapp/c$2;-><init>(Lcom/kahuna/sdk/inapp/c;Z)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 634
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 105
    sput-object p0, Lcom/kahuna/sdk/inapp/c;->g:Landroid/content/Context;

    .line 106
    return-void
.end method

.method private a(Landroid/view/View;ILcom/kahuna/sdk/inapp/a;)V
    .locals 2

    .prologue
    .line 652
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 653
    if-eqz p3, :cond_0

    .line 654
    invoke-virtual {p3}, Lcom/kahuna/sdk/inapp/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 655
    invoke-virtual {p3}, Lcom/kahuna/sdk/inapp/a;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 656
    invoke-virtual {p3}, Lcom/kahuna/sdk/inapp/a;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 658
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 659
    new-instance v1, Lcom/kahuna/sdk/inapp/c$3;

    invoke-direct {v1, p0}, Lcom/kahuna/sdk/inapp/c$3;-><init>(Lcom/kahuna/sdk/inapp/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 670
    :goto_0
    return-void

    .line 668
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;ILcom/kahuna/sdk/inapp/b;)V
    .locals 2

    .prologue
    .line 647
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 648
    invoke-virtual {p3}, Lcom/kahuna/sdk/inapp/b;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 649
    return-void
.end method

.method private a(Landroid/view/View;ILcom/kahuna/sdk/inapp/e;)V
    .locals 2

    .prologue
    .line 641
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 642
    invoke-virtual {p3}, Lcom/kahuna/sdk/inapp/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    invoke-virtual {p3}, Lcom/kahuna/sdk/inapp/e;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 644
    return-void
.end method

.method private a(Landroid/view/View;Lcom/kahuna/sdk/inapp/d;)V
    .locals 1

    .prologue
    .line 637
    invoke-virtual {p2}, Lcom/kahuna/sdk/inapp/d;->g()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 638
    return-void
.end method

.method private static a(Lcom/kahuna/sdk/inapp/RichInAppMessage;Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 363
    if-eqz p0, :cond_0

    .line 365
    invoke-virtual {p0}, Lcom/kahuna/sdk/inapp/RichInAppMessage;->j()Lcom/kahuna/sdk/inapp/RichInAppMessage$State;

    move-result-object v0

    sget-object v1, Lcom/kahuna/sdk/inapp/RichInAppMessage$State;->UNPREPARED:Lcom/kahuna/sdk/inapp/RichInAppMessage$State;

    if-ne v0, v1, :cond_1

    .line 366
    invoke-virtual {p0}, Lcom/kahuna/sdk/inapp/RichInAppMessage;->g()V

    .line 367
    new-instance v0, Lcom/kahuna/sdk/inapp/c$a;

    invoke-direct {v0, p0}, Lcom/kahuna/sdk/inapp/c$a;-><init>(Lcom/kahuna/sdk/inapp/RichInAppMessage;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kahuna/sdk/inapp/c$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    invoke-virtual {p0}, Lcom/kahuna/sdk/inapp/RichInAppMessage;->j()Lcom/kahuna/sdk/inapp/RichInAppMessage$State;

    move-result-object v0

    sget-object v1, Lcom/kahuna/sdk/inapp/RichInAppMessage$State;->PREPARED:Lcom/kahuna/sdk/inapp/RichInAppMessage$State;

    if-ne v0, v1, :cond_0

    .line 370
    if-eqz p1, :cond_0

    .line 371
    invoke-static {}, Lcom/kahuna/sdk/inapp/c;->f()Lcom/kahuna/sdk/inapp/c;

    move-result-object v0

    invoke-direct {v0, p1, p0}, Lcom/kahuna/sdk/inapp/c;->a(Landroid/app/Activity;Lcom/kahuna/sdk/inapp/RichInAppMessage;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/kahuna/sdk/inapp/RichInAppMessage;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    invoke-static {p0, p1}, Lcom/kahuna/sdk/inapp/c;->b(Lcom/kahuna/sdk/inapp/RichInAppMessage;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/kahuna/sdk/inapp/a;)V
    .locals 4

    .prologue
    .line 674
    if-eqz p1, :cond_1

    .line 675
    :try_start_0
    invoke-virtual {p1}, Lcom/kahuna/sdk/inapp/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 676
    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 677
    const-string/jumbo v1, "url"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    invoke-virtual {p1}, Lcom/kahuna/sdk/inapp/a;->d()Ljava/lang/String;

    move-result-object v0

    .line 679
    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 680
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 681
    iget-object v0, p0, Lcom/kahuna/sdk/inapp/c;->j:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/kahuna/sdk/inapp/c;->f:Lcom/kahuna/sdk/inapp/RichInAppMessage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kahuna/sdk/inapp/c;->f:Lcom/kahuna/sdk/inapp/RichInAppMessage;

    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/RichInAppMessage;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 688
    iget-object v0, p0, Lcom/kahuna/sdk/inapp/c;->f:Lcom/kahuna/sdk/inapp/RichInAppMessage;

    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/RichInAppMessage;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/inapp/d;

    .line 689
    new-instance v1, Lcom/kahuna/sdk/d;

    const-string/jumbo v2, "k_iam_clicked"

    invoke-direct {v1, v2}, Lcom/kahuna/sdk/d;-><init>(Ljava/lang/String;)V

    .line 690
    const-string/jumbo v2, "trackingId"

    iget-object v3, p0, Lcom/kahuna/sdk/inapp/c;->f:Lcom/kahuna/sdk/inapp/RichInAppMessage;

    invoke-virtual {v3}, Lcom/kahuna/sdk/inapp/RichInAppMessage;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/kahuna/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/kahuna/sdk/d;

    .line 691
    const-string/jumbo v2, "templateId"

    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/kahuna/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/kahuna/sdk/d;

    .line 692
    const-string/jumbo v0, "button"

    invoke-virtual {p1}, Lcom/kahuna/sdk/inapp/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/kahuna/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/kahuna/sdk/d;

    .line 693
    invoke-static {}, Lcom/kahuna/sdk/j;->i()Lcom/kahuna/sdk/h;

    move-result-object v0

    invoke-virtual {v1}, Lcom/kahuna/sdk/d;->a()Lcom/kahuna/sdk/Event;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/Event;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/kahuna/sdk/inapp/c;->j:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/kahuna/sdk/inapp/c;->a(Landroid/app/Activity;Z)V

    .line 704
    return-void

    .line 698
    :catch_0
    move-exception v0

    .line 699
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 700
    const-string/jumbo v1, "Kahuna"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Caught exception trying to open Url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/kahuna/sdk/inapp/c;Landroid/app/Activity;Lcom/kahuna/sdk/inapp/RichInAppMessage;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/kahuna/sdk/inapp/c;->a(Landroid/app/Activity;Lcom/kahuna/sdk/inapp/RichInAppMessage;)V

    return-void
.end method

.method static synthetic a(Lcom/kahuna/sdk/inapp/c;Landroid/app/Activity;Z)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/kahuna/sdk/inapp/c;->a(Landroid/app/Activity;Z)V

    return-void
.end method

.method static synthetic a(Lcom/kahuna/sdk/inapp/c;Landroid/view/View;ILcom/kahuna/sdk/inapp/a;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/kahuna/sdk/inapp/c;->a(Landroid/view/View;ILcom/kahuna/sdk/inapp/a;)V

    return-void
.end method

.method static synthetic a(Lcom/kahuna/sdk/inapp/c;Landroid/view/View;ILcom/kahuna/sdk/inapp/b;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/kahuna/sdk/inapp/c;->a(Landroid/view/View;ILcom/kahuna/sdk/inapp/b;)V

    return-void
.end method

.method static synthetic a(Lcom/kahuna/sdk/inapp/c;Landroid/view/View;ILcom/kahuna/sdk/inapp/e;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/kahuna/sdk/inapp/c;->a(Landroid/view/View;ILcom/kahuna/sdk/inapp/e;)V

    return-void
.end method

.method static synthetic a(Lcom/kahuna/sdk/inapp/c;Landroid/view/View;Lcom/kahuna/sdk/inapp/d;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/kahuna/sdk/inapp/c;->a(Landroid/view/View;Lcom/kahuna/sdk/inapp/d;)V

    return-void
.end method

.method static synthetic a(Lcom/kahuna/sdk/inapp/c;Lcom/kahuna/sdk/inapp/a;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/kahuna/sdk/inapp/c;->a(Lcom/kahuna/sdk/inapp/a;)V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 299
    invoke-static {p0}, Lcom/kahuna/sdk/w;->a(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    const-string/jumbo v0, "Kahuna"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Aborting attempt to process empty or null in app message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 307
    const-string/jumbo v0, "Kahuna"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Processing received Rich In App Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_2
    invoke-static {p0}, Lcom/kahuna/sdk/w;->a(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    invoke-static {p0}, Lcom/kahuna/sdk/inapp/RichInAppMessage;->a(Lorg/json/JSONObject;)Lcom/kahuna/sdk/inapp/RichInAppMessage;

    move-result-object v0

    .line 311
    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Lcom/kahuna/sdk/inapp/RichInAppMessage;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lcom/kahuna/sdk/inapp/c;->a(Lcom/kahuna/sdk/inapp/RichInAppMessage;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 314
    invoke-static {}, Lcom/kahuna/sdk/inapp/c;->f()Lcom/kahuna/sdk/inapp/c;

    move-result-object v1

    iget-object v1, v1, Lcom/kahuna/sdk/inapp/c;->f:Lcom/kahuna/sdk/inapp/RichInAppMessage;

    if-eqz v1, :cond_3

    .line 315
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "Already processing another in app message, ignoring recently received one."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 331
    const-string/jumbo v1, "Kahuna"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Caught exception in handle InAppMessage Response handler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 319
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/kahuna/sdk/inapp/c;->f()Lcom/kahuna/sdk/inapp/c;

    move-result-object v1

    iput-object v0, v1, Lcom/kahuna/sdk/inapp/c;->f:Lcom/kahuna/sdk/inapp/RichInAppMessage;

    .line 320
    invoke-static {}, Lcom/kahuna/sdk/inapp/c;->f()Lcom/kahuna/sdk/inapp/c;

    move-result-object v1

    iget-object v1, v1, Lcom/kahuna/sdk/inapp/c;->j:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/kahuna/sdk/inapp/c;->a(Lcom/kahuna/sdk/inapp/RichInAppMessage;Landroid/app/Activity;)V

    goto :goto_0

    .line 322
    :cond_4
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 323
    const-string/jumbo v1, "Kahuna"

    const-string/jumbo v2, "Unable to display Rich In App Message with missing or malformed data."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_5
    const-string/jumbo v1, "Missing or Malformed data."

    invoke-static {v0, v1}, Lcom/kahuna/sdk/inapp/c;->b(Lcom/kahuna/sdk/inapp/RichInAppMessage;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private static a(Lcom/kahuna/sdk/inapp/RichInAppMessage;)Z
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 378
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/kahuna/sdk/inapp/RichInAppMessage;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 418
    :goto_0
    return v0

    .line 383
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 384
    invoke-virtual {p0}, Lcom/kahuna/sdk/inapp/RichInAppMessage;->b()J

    move-result-wide v6

    .line 385
    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_3

    cmp-long v0, v6, v4

    if-gez v0, :cond_3

    .line 386
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 387
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v2, "Unable to display expired Rich In App Message."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_2
    const-string/jumbo v0, "Message expired."

    invoke-static {p0, v0}, Lcom/kahuna/sdk/inapp/c;->b(Lcom/kahuna/sdk/inapp/RichInAppMessage;Ljava/lang/String;)V

    move v0, v1

    .line 391
    goto :goto_0

    .line 394
    :cond_3
    invoke-virtual {p0}, Lcom/kahuna/sdk/inapp/RichInAppMessage;->c()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 395
    invoke-virtual {p0}, Lcom/kahuna/sdk/inapp/RichInAppMessage;->c()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/w;->d(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 397
    const-string/jumbo v0, "Bad credentials."

    invoke-static {p0, v0}, Lcom/kahuna/sdk/inapp/c;->b(Lcom/kahuna/sdk/inapp/RichInAppMessage;Ljava/lang/String;)V

    move v0, v1

    .line 398
    goto :goto_0

    .line 403
    :cond_4
    invoke-virtual {p0}, Lcom/kahuna/sdk/inapp/RichInAppMessage;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/inapp/d;

    .line 404
    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/d;->c()I

    move-result v5

    invoke-static {v0, v4, v5}, Lcom/kahuna/sdk/inapp/c;->b(Lcom/kahuna/sdk/inapp/d;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 405
    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/d;->d()I

    move-result v5

    invoke-static {v0, v4, v5}, Lcom/kahuna/sdk/inapp/c;->b(Lcom/kahuna/sdk/inapp/d;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 406
    const-string/jumbo v4, "system"

    invoke-static {v0, v4, v2}, Lcom/kahuna/sdk/inapp/c;->b(Lcom/kahuna/sdk/inapp/d;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 407
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 408
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v2, "Unable to display Rich In App Message with missing or malformed data."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_6
    const-string/jumbo v0, "Missing or Malformed data."

    invoke-static {p0, v0}, Lcom/kahuna/sdk/inapp/c;->b(Lcom/kahuna/sdk/inapp/RichInAppMessage;Ljava/lang/String;)V

    move v0, v1

    .line 412
    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 418
    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/kahuna/sdk/inapp/d;Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 60
    invoke-static {p0, p1, p2}, Lcom/kahuna/sdk/inapp/c;->b(Lcom/kahuna/sdk/inapp/d;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/kahuna/sdk/inapp/c;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kahuna/sdk/inapp/c;->h:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic b()Ljava/util/List;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/kahuna/sdk/inapp/c;->b:Ljava/util/List;

    return-object v0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 353
    invoke-static {}, Lcom/kahuna/sdk/inapp/c;->f()Lcom/kahuna/sdk/inapp/c;

    move-result-object v0

    iget-object v0, v0, Lcom/kahuna/sdk/inapp/c;->i:Landroid/app/Activity;

    if-ne v0, p0, :cond_0

    .line 354
    invoke-static {}, Lcom/kahuna/sdk/inapp/c;->f()Lcom/kahuna/sdk/inapp/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kahuna/sdk/inapp/c;->a(Landroid/app/Activity;Z)V

    .line 357
    :cond_0
    invoke-static {}, Lcom/kahuna/sdk/inapp/c;->f()Lcom/kahuna/sdk/inapp/c;

    move-result-object v0

    iget-object v0, v0, Lcom/kahuna/sdk/inapp/c;->j:Landroid/app/Activity;

    if-ne v0, p0, :cond_1

    .line 358
    invoke-static {}, Lcom/kahuna/sdk/inapp/c;->f()Lcom/kahuna/sdk/inapp/c;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/kahuna/sdk/inapp/c;->j:Landroid/app/Activity;

    .line 360
    :cond_1
    return-void
.end method

.method private static b(Lcom/kahuna/sdk/inapp/RichInAppMessage;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 707
    new-instance v1, Lcom/kahuna/sdk/d;

    const-string/jumbo v0, "k_iam_not_displayed"

    invoke-direct {v1, v0}, Lcom/kahuna/sdk/d;-><init>(Ljava/lang/String;)V

    .line 708
    const-string/jumbo v0, "reason"

    invoke-virtual {v1, v0, p1}, Lcom/kahuna/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/kahuna/sdk/d;

    .line 709
    invoke-static {p0}, Lcom/kahuna/sdk/w;->a(Lcom/kahuna/sdk/inapp/RichInAppMessage;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 710
    const-string/jumbo v0, "trackingId"

    invoke-virtual {p0}, Lcom/kahuna/sdk/inapp/RichInAppMessage;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/kahuna/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/kahuna/sdk/d;

    .line 711
    invoke-virtual {p0}, Lcom/kahuna/sdk/inapp/RichInAppMessage;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 712
    invoke-virtual {p0}, Lcom/kahuna/sdk/inapp/RichInAppMessage;->d()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/inapp/d;

    .line 713
    const-string/jumbo v2, "templateId"

    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/kahuna/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/kahuna/sdk/d;

    .line 716
    :cond_0
    invoke-static {}, Lcom/kahuna/sdk/j;->i()Lcom/kahuna/sdk/h;

    move-result-object v0

    invoke-virtual {v1}, Lcom/kahuna/sdk/d;->a()Lcom/kahuna/sdk/Event;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/Event;)V

    .line 717
    return-void
.end method

.method private static b(Lcom/kahuna/sdk/inapp/d;Ljava/lang/String;I)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 422
    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/kahuna/sdk/inapp/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 510
    :goto_0
    return v0

    .line 426
    :cond_1
    const-string/jumbo v0, "fullscreen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 427
    sget-object v0, Lcom/kahuna/sdk/inapp/c;->b:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 428
    goto :goto_0

    .line 431
    :cond_2
    invoke-virtual {p0}, Lcom/kahuna/sdk/inapp/d;->e()Lcom/kahuna/sdk/inapp/e;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Lcom/kahuna/sdk/inapp/e;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/kahuna/sdk/inapp/d;->f()Lcom/kahuna/sdk/inapp/e;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Lcom/kahuna/sdk/inapp/e;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/kahuna/sdk/inapp/d;->i()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/kahuna/sdk/inapp/d;->h()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v1

    .line 432
    goto :goto_0

    .line 436
    :cond_4
    invoke-virtual {p0}, Lcom/kahuna/sdk/inapp/d;->h()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v2, "button1"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/inapp/a;

    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Lcom/kahuna/sdk/inapp/a;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/kahuna/sdk/inapp/d;->h()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v2, "button2"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/inapp/a;

    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Lcom/kahuna/sdk/inapp/a;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    move v0, v1

    .line 437
    goto :goto_0

    .line 440
    :cond_6
    packed-switch p2, :pswitch_data_0

    move v0, v1

    .line 452
    goto :goto_0

    .line 442
    :pswitch_0
    invoke-virtual {p0}, Lcom/kahuna/sdk/inapp/d;->i()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v2, "image1"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/inapp/b;

    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Lcom/kahuna/sdk/inapp/b;)Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v1

    .line 443
    goto/16 :goto_0

    .line 447
    :pswitch_1
    invoke-virtual {p0}, Lcom/kahuna/sdk/inapp/d;->i()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v2, "image1"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/inapp/b;

    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Lcom/kahuna/sdk/inapp/b;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/kahuna/sdk/inapp/d;->i()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v2, "image2"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/inapp/b;

    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Lcom/kahuna/sdk/inapp/b;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_7
    move v0, v1

    .line 448
    goto/16 :goto_0

    .line 455
    :cond_8
    const-string/jumbo v0, "modal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 456
    sget-object v0, Lcom/kahuna/sdk/inapp/c;->c:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 457
    goto/16 :goto_0

    .line 460
    :cond_9
    invoke-virtual {p0}, Lcom/kahuna/sdk/inapp/d;->e()Lcom/kahuna/sdk/inapp/e;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Lcom/kahuna/sdk/inapp/e;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/kahuna/sdk/inapp/d;->f()Lcom/kahuna/sdk/inapp/e;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Lcom/kahuna/sdk/inapp/e;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/kahuna/sdk/inapp/d;->i()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/kahuna/sdk/inapp/d;->h()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    move v0, v1

    .line 461
    goto/16 :goto_0

    .line 465
    :cond_b
    invoke-virtual {p0}, Lcom/kahuna/sdk/inapp/d;->i()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v2, "image1"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/inapp/b;

    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Lcom/kahuna/sdk/inapp/b;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    .line 466
    goto/16 :goto_0

    .line 469
    :cond_c
    packed-switch p2, :pswitch_data_1

    move v0, v1

    .line 476
    goto/16 :goto_0

    .line 471
    :pswitch_2
    invoke-virtual {p0}, Lcom/kahuna/sdk/inapp/d;->h()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v2, "button1"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/inapp/a;

    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Lcom/kahuna/sdk/inapp/a;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/kahuna/sdk/inapp/d;->h()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v2, "button2"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/inapp/a;

    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Lcom/kahuna/sdk/inapp/a;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_d
    move v0, v1

    .line 472
    goto/16 :goto_0

    .line 479
    :cond_e
    const-string/jumbo v0, "slider"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 480
    sget-object v0, Lcom/kahuna/sdk/inapp/c;->d:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v1

    .line 481
    goto/16 :goto_0

    .line 484
    :cond_f
    invoke-virtual {p0}, Lcom/kahuna/sdk/inapp/d;->f()Lcom/kahuna/sdk/inapp/e;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Lcom/kahuna/sdk/inapp/e;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/kahuna/sdk/inapp/d;->i()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/kahuna/sdk/inapp/d;->h()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    move v0, v1

    .line 485
    goto/16 :goto_0

    .line 489
    :cond_11
    invoke-virtual {p0}, Lcom/kahuna/sdk/inapp/d;->i()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v2, "image1"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/inapp/b;

    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Lcom/kahuna/sdk/inapp/b;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v1

    .line 490
    goto/16 :goto_0

    .line 494
    :cond_12
    invoke-virtual {p0}, Lcom/kahuna/sdk/inapp/d;->h()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v2, "button1"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/kahuna/sdk/inapp/d;->h()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v2, "close_button"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_17

    :cond_13
    move v0, v1

    .line 495
    goto/16 :goto_0

    .line 500
    :cond_14
    invoke-virtual {p0}, Lcom/kahuna/sdk/inapp/d;->f()Lcom/kahuna/sdk/inapp/e;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Lcom/kahuna/sdk/inapp/e;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/kahuna/sdk/inapp/d;->h()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_15
    move v0, v1

    .line 501
    goto/16 :goto_0

    .line 505
    :cond_16
    invoke-virtual {p0}, Lcom/kahuna/sdk/inapp/d;->h()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v2, "button1"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/inapp/a;

    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Lcom/kahuna/sdk/inapp/a;)Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v1

    .line 506
    goto/16 :goto_0

    .line 510
    :cond_17
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 440
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 469
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic c(Lcom/kahuna/sdk/inapp/c;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kahuna/sdk/inapp/c;->j:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c()Ljava/util/List;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/kahuna/sdk/inapp/c;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d()Ljava/util/List;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/kahuna/sdk/inapp/c;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e()Lcom/kahuna/sdk/inapp/c;
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lcom/kahuna/sdk/inapp/c;->f()Lcom/kahuna/sdk/inapp/c;

    move-result-object v0

    return-object v0
.end method

.method private static f()Lcom/kahuna/sdk/inapp/c;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/kahuna/sdk/inapp/c;->e:Lcom/kahuna/sdk/inapp/c;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/kahuna/sdk/inapp/c;

    invoke-direct {v0}, Lcom/kahuna/sdk/inapp/c;-><init>()V

    sput-object v0, Lcom/kahuna/sdk/inapp/c;->e:Lcom/kahuna/sdk/inapp/c;

    .line 99
    :cond_0
    sget-object v0, Lcom/kahuna/sdk/inapp/c;->e:Lcom/kahuna/sdk/inapp/c;

    return-object v0
.end method
