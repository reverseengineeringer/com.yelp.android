.class public Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;
.super Landroid/support/v4/app/Fragment;
.source "YourNextReviewAwaitsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/ReviewSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$a;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/ui/panels/g;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private final e:Lcom/yelp/android/ui/panels/g$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->d:I

    .line 177
    new-instance v0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$3;-><init>(Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->e:Lcom/yelp/android/ui/panels/g$a;

    .line 225
    return-void
.end method

.method public static a(Ljava/util/ArrayList;)Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/ReviewSuggestion;",
            ">;)",
            "Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;-><init>()V

    .line 49
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 50
    const-string/jumbo v2, "saved_suggestion_list"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 51
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 52
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->c:Ljava/util/List;

    return-object v0
.end method

.method private a(Lcom/yelp/android/serializable/ReviewSuggestion;Landroid/view/ViewGroup;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 149
    new-instance v0, Lcom/yelp/android/ui/panels/g;

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->e:Lcom/yelp/android/ui/panels/g$a;

    sget-object v3, Lcom/yelp/android/analytics/iris/IriSource;->PostReviewYNRA:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/yelp/android/ui/panels/g;-><init>(Landroid/content/Context;Lcom/yelp/android/serializable/ReviewSuggestion;Lcom/yelp/android/ui/panels/g$a;Lcom/yelp/android/analytics/iris/IriSource;)V

    .line 152
    iget-object v1, p0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 155
    if-eqz p3, :cond_0

    .line 156
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/panels/g;->measure(II)V

    .line 159
    sget v1, Lcom/yelp/android/ui/util/av;->c:I

    new-instance v2, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$2;-><init>(Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;Lcom/yelp/android/ui/panels/g;)V

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/util/av;->a(Landroid/view/View;ILcom/yelp/android/ui/util/av$a;)V

    .line 175
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;Lcom/yelp/android/serializable/ReviewSuggestion;Landroid/view/ViewGroup;Z)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->a(Lcom/yelp/android/serializable/ReviewSuggestion;Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;)Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$a;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->b:Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$a;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 71
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$a;

    move-object v1, v0

    iput-object v1, p0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->b:Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$a;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    return-void

    .line 72
    :catch_0
    move-exception v1

    .line 73
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " must implement YNRAListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    if-eqz p1, :cond_1

    .line 59
    const-string/jumbo v0, "saved_suggestion_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->a:Ljava/util/ArrayList;

    .line 60
    const-string/jumbo v0, "saved_num_suggestions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->d:I

    .line 64
    :cond_0
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->c:Ljava/util/List;

    .line 65
    return-void

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "saved_suggestion_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->a:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 80
    const v0, 0x7f0301c1

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 81
    const v1, 0x7f0f0544

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 82
    const v2, 0x7f0f0545

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 83
    new-instance v3, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$1;-><init>(Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget v3, p0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->d:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v4, v3

    :goto_0
    move v5, v6

    .line 124
    :goto_1
    if-ge v5, v4, :cond_1

    .line 125
    iget-object v3, p0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yelp/android/serializable/ReviewSuggestion;

    invoke-direct {p0, v3, v1, v6}, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->a(Lcom/yelp/android/serializable/ReviewSuggestion;Landroid/view/ViewGroup;Z)V

    .line 124
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_1

    .line 120
    :cond_0
    iget v3, p0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->d:I

    move v4, v3

    goto :goto_0

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v4, :cond_2

    .line 128
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 130
    :cond_2
    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 142
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 143
    iget-object v0, p0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/panels/g;

    .line 144
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/panels/g;->setCallback(Lcom/yelp/android/ui/panels/g$a;)V

    goto :goto_0

    .line 146
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 136
    const-string/jumbo v0, "saved_suggestion_list"

    iget-object v1, p0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 137
    const-string/jumbo v0, "saved_num_suggestions"

    iget-object v1, p0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    return-void
.end method
