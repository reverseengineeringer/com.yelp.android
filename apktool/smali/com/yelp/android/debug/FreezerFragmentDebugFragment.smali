.class public Lcom/yelp/android/debug/FreezerFragmentDebugFragment;
.super Lcom/yelp/android/ui/activities/support/YelpFragment;
.source "FreezerFragmentDebugFragment.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/debug/f",
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
    .line 27
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/debug/FreezerFragmentDebugFragment;->a:Ljava/util/List;

    .line 129
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/debug/FreezerFragmentDebugFragment;I)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/yelp/android/debug/FreezerFragmentDebugFragment;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/yelp/android/debug/FreezerFragmentDebugFragment;->c:I

    return v0
.end method

.method static synthetic a(Lcom/yelp/android/debug/FreezerFragmentDebugFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yelp/android/debug/FreezerFragmentDebugFragment;->a:Ljava/util/List;

    return-object v0
.end method

.method private static a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/debug/f",
            "<**>;>;)V"
        }
    .end annotation

    .prologue
    .line 120
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 121
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/debug/f;

    .line 123
    invoke-virtual {v0}, Lcom/yelp/android/debug/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 127
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/debug/FreezerFragmentDebugFragment;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/yelp/android/debug/FreezerFragmentDebugFragment;->c:I

    return v0
.end method

.method static synthetic c(Lcom/yelp/android/debug/FreezerFragmentDebugFragment;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yelp/android/debug/FreezerFragmentDebugFragment;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 70
    if-eqz p1, :cond_2

    .line 71
    const-string/jumbo v0, "REQUEST_LABELS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 72
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 73
    const-string/jumbo v5, "MyCheckInsRequest"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 74
    iget-object v5, p0, Lcom/yelp/android/debug/FreezerFragmentDebugFragment;->a:Ljava/util/List;

    new-instance v6, Lcom/yelp/android/debug/f;

    invoke-virtual {p0}, Lcom/yelp/android/debug/FreezerFragmentDebugFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v6, p0, v7, v4}, Lcom/yelp/android/debug/f;-><init>(Lcom/yelp/android/debug/FreezerFragmentDebugFragment;Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_0
    iget-object v5, p0, Lcom/yelp/android/debug/FreezerFragmentDebugFragment;->a:Ljava/util/List;

    new-instance v6, Lcom/yelp/android/debug/f;

    invoke-virtual {p0}, Lcom/yelp/android/debug/FreezerFragmentDebugFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v6, p0, v7, v4}, Lcom/yelp/android/debug/f;-><init>(Lcom/yelp/android/debug/FreezerFragmentDebugFragment;Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 81
    :cond_1
    const-string/jumbo v0, "REQUEST_COUNTER"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/debug/FreezerFragmentDebugFragment;->c:I

    .line 83
    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 40
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 41
    const-string/jumbo v2, "Create Request"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 42
    new-instance v2, Lcom/yelp/android/debug/e;

    invoke-direct {v2, p0, v0}, Lcom/yelp/android/debug/e;-><init>(Lcom/yelp/android/debug/FreezerFragmentDebugFragment;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/yelp/android/debug/FreezerFragmentDebugFragment;->b:Landroid/widget/LinearLayout;

    .line 60
    iget-object v2, p0, Lcom/yelp/android/debug/FreezerFragmentDebugFragment;->b:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 61
    iget-object v2, p0, Lcom/yelp/android/debug/FreezerFragmentDebugFragment;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 62
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 63
    iget-object v0, p0, Lcom/yelp/android/debug/FreezerFragmentDebugFragment;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 64
    return-object v1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onPause()V

    .line 88
    iget-object v0, p0, Lcom/yelp/android/debug/FreezerFragmentDebugFragment;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/yelp/android/debug/FreezerFragmentDebugFragment;->a(Ljava/util/List;)V

    .line 89
    iget-object v0, p0, Lcom/yelp/android/debug/FreezerFragmentDebugFragment;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/debug/f;

    .line 90
    invoke-virtual {v0, p0}, Lcom/yelp/android/debug/f;->a(Lcom/yelp/android/debug/FreezerFragmentDebugFragment;)V

    goto :goto_0

    .line 92
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onResume()V

    .line 97
    iget-object v0, p0, Lcom/yelp/android/debug/FreezerFragmentDebugFragment;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/debug/f;

    .line 98
    invoke-virtual {v0, p0}, Lcom/yelp/android/debug/f;->b(Lcom/yelp/android/debug/FreezerFragmentDebugFragment;)V

    goto :goto_0

    .line 100
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 105
    iget-object v0, p0, Lcom/yelp/android/debug/FreezerFragmentDebugFragment;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/yelp/android/debug/FreezerFragmentDebugFragment;->a(Ljava/util/List;)V

    .line 106
    iget-object v0, p0, Lcom/yelp/android/debug/FreezerFragmentDebugFragment;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/yelp/android/debug/FreezerFragmentDebugFragment;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/yelp/android/debug/FreezerFragmentDebugFragment;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/debug/f;

    invoke-virtual {v0}, Lcom/yelp/android/debug/f;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 107
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 110
    :cond_0
    const-string/jumbo v0, "REQUEST_LABELS"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 111
    const-string/jumbo v0, "REQUEST_COUNTER"

    iget v1, p0, Lcom/yelp/android/debug/FreezerFragmentDebugFragment;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    return-void
.end method
