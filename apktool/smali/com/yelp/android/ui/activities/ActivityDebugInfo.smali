.class public Lcom/yelp/android/ui/activities/ActivityDebugInfo;
.super Landroid/app/Activity;
.source "ActivityDebugInfo.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "all"
    }
.end annotation


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/Button;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 43
    const v0, 0x7f0c012a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityDebugInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityDebugInfo;->a:Landroid/widget/LinearLayout;

    .line 44
    const v0, 0x7f0c012b

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityDebugInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityDebugInfo;->b:Landroid/widget/Button;

    .line 46
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->h()Lcom/yelp/android/appdata/n;

    move-result-object v0

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/n;->a(Lcom/yelp/android/appdata/p;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityDebugInfo;->c:Ljava/util/ArrayList;

    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityDebugInfo;->c:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "DEVICE_ID"

    aput-object v4, v2, v3

    invoke-static {}, Lcom/yelp/android/services/push/d;->b()Lcom/yelp/android/services/push/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/services/push/d;->g()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v3

    .line 50
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityDebugInfo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityDebugInfo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 53
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 56
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v1, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    const v1, 0x7f0f0090

    invoke-virtual {v4, p0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 59
    if-nez v2, :cond_0

    .line 60
    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 64
    :goto_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityDebugInfo;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 66
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 67
    const v1, 0x7f0f00f0

    invoke-virtual {v6, p0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 68
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v1, 0x3e8

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move v4, v5

    .line 69
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_1

    .line 70
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string/jumbo v1, "\n"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    .line 62
    :cond_0
    sget v1, Lcom/yelp/android/appdata/ao;->i:I

    invoke-virtual {v4, v3, v1, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1

    .line 73
    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityDebugInfo;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 50
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityDebugInfo;->b:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/ce;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ce;-><init>(Lcom/yelp/android/ui/activities/ActivityDebugInfo;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityDebugInfo;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityDebugInfo;->b()V

    return-void
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 88
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityDebugInfo;->d:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 89
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v0, 0x3e8

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v2, v3

    .line 90
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityDebugInfo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityDebugInfo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move v4, v3

    .line 92
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_0

    .line 93
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string/jumbo v1, "\n"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 96
    :cond_0
    const-string/jumbo v0, "\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityDebugInfo;->d:Ljava/lang/String;

    .line 101
    :cond_2
    const-string/jumbo v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityDebugInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 102
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityDebugInfo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const-string/jumbo v0, "Stats Copied!"

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityDebugInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/util/cp;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f030029

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityDebugInfo;->setContentView(I)V

    .line 39
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityDebugInfo;->a()V

    .line 40
    return-void
.end method
