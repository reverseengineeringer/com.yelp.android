.class public Lcom/yelp/android/debug/FreezerDebugActivity;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "FreezerDebugActivity.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/debug/c",
            "<**>;>;"
        }
    .end annotation
.end field

.field private b:Landroid/widget/LinearLayout;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/debug/FreezerDebugActivity;->a:Ljava/util/List;

    .line 132
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/debug/FreezerDebugActivity;I)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/yelp/android/debug/FreezerDebugActivity;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/yelp/android/debug/FreezerDebugActivity;->c:I

    return v0
.end method

.method static synthetic a(Lcom/yelp/android/debug/FreezerDebugActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yelp/android/debug/FreezerDebugActivity;->a:Ljava/util/List;

    return-object v0
.end method

.method private static a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/debug/c",
            "<**>;>;)V"
        }
    .end annotation

    .prologue
    .line 123
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 124
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/debug/c;

    .line 126
    invoke-virtual {v0}, Lcom/yelp/android/debug/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 130
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/debug/FreezerDebugActivity;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/yelp/android/debug/FreezerDebugActivity;->c:I

    return v0
.end method

.method static synthetic c(Lcom/yelp/android/debug/FreezerDebugActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yelp/android/debug/FreezerDebugActivity;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/yelp/android/debug/FreezerDebugActivity;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 42
    const-string/jumbo v1, "Create Request"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 43
    new-instance v1, Lcom/yelp/android/debug/b;

    invoke-direct {v1, p0, p0}, Lcom/yelp/android/debug/b;-><init>(Lcom/yelp/android/debug/FreezerDebugActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/yelp/android/debug/FreezerDebugActivity;->b:Landroid/widget/LinearLayout;

    .line 60
    iget-object v1, p0, Lcom/yelp/android/debug/FreezerDebugActivity;->b:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 61
    iget-object v1, p0, Lcom/yelp/android/debug/FreezerDebugActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 62
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 63
    iget-object v1, p0, Lcom/yelp/android/debug/FreezerDebugActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 64
    invoke-virtual {p0, v0}, Lcom/yelp/android/debug/FreezerDebugActivity;->setContentView(Landroid/view/View;)V

    .line 65
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 98
    iget-object v0, p0, Lcom/yelp/android/debug/FreezerDebugActivity;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/yelp/android/debug/FreezerDebugActivity;->a(Ljava/util/List;)V

    .line 99
    iget-object v0, p0, Lcom/yelp/android/debug/FreezerDebugActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/debug/c;

    .line 100
    invoke-virtual {v0, p0}, Lcom/yelp/android/debug/c;->a(Lcom/yelp/android/debug/FreezerDebugActivity;)V

    goto :goto_0

    .line 102
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 82
    const-string/jumbo v0, "REQUEST_LABELS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 83
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 84
    const-string/jumbo v5, "MyCheckInsRequest"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 85
    iget-object v5, p0, Lcom/yelp/android/debug/FreezerDebugActivity;->a:Ljava/util/List;

    new-instance v6, Lcom/yelp/android/debug/c;

    invoke-direct {v6, p0, p0, v4}, Lcom/yelp/android/debug/c;-><init>(Lcom/yelp/android/debug/FreezerDebugActivity;Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_0
    iget-object v5, p0, Lcom/yelp/android/debug/FreezerDebugActivity;->a:Ljava/util/List;

    new-instance v6, Lcom/yelp/android/debug/c;

    invoke-direct {v6, p0, p0, v4}, Lcom/yelp/android/debug/c;-><init>(Lcom/yelp/android/debug/FreezerDebugActivity;Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 92
    :cond_1
    const-string/jumbo v0, "REQUEST_COUNTER"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/debug/FreezerDebugActivity;->c:I

    .line 93
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 107
    iget-object v0, p0, Lcom/yelp/android/debug/FreezerDebugActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/debug/c;

    .line 108
    invoke-virtual {v0, p0}, Lcom/yelp/android/debug/c;->b(Lcom/yelp/android/debug/FreezerDebugActivity;)V

    goto :goto_0

    .line 110
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 70
    iget-object v0, p0, Lcom/yelp/android/debug/FreezerDebugActivity;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/yelp/android/debug/FreezerDebugActivity;->a(Ljava/util/List;)V

    .line 71
    iget-object v0, p0, Lcom/yelp/android/debug/FreezerDebugActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/yelp/android/debug/FreezerDebugActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/yelp/android/debug/FreezerDebugActivity;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/debug/c;

    invoke-virtual {v0}, Lcom/yelp/android/debug/c;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 72
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 75
    :cond_0
    const-string/jumbo v0, "REQUEST_LABELS"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 76
    const-string/jumbo v0, "REQUEST_COUNTER"

    iget v1, p0, Lcom/yelp/android/debug/FreezerDebugActivity;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    return-void
.end method
