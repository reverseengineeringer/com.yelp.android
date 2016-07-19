.class public Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment;
.super Lcom/yelp/android/ui/activities/support/YelpFragment;
.source "FlagReviewReasonsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$a;,
        Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;-><init>()V

    .line 143
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment;)Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$a;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment;->a:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$a;

    return-object v0
.end method

.method private a()Ljava/lang/CharSequence;
    .locals 9

    .prologue
    const/16 v8, 0x21

    .line 112
    const v0, 0x7f07021b

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    const v1, 0x7f0705c4

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 115
    const v2, 0x7f07021c

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 116
    const v3, 0x7f0705c5

    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 118
    const v4, 0x7f0704d1

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 122
    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 123
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v5

    .line 125
    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 126
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v6

    .line 128
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 129
    new-instance v4, Landroid/text/style/URLSpan;

    invoke-direct {v4, v2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v6, v0, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 134
    new-instance v0, Landroid/text/style/URLSpan;

    invoke-direct {v0, v3}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v5, v1, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 140
    return-object v7
.end method

.method private a(Landroid/view/View;Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;)V
    .locals 2

    .prologue
    .line 95
    iget v0, p2, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$1;

    invoke-direct {v1, p0, p2}, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$1;-><init>(Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment;Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onAttach(Landroid/app/Activity;)V

    .line 70
    check-cast p1, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$a;

    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment;->a:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$a;

    .line 71
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 75
    const v1, 0x7f0300cf

    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 77
    invoke-static {}, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;->values()[Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 78
    invoke-direct {p0, v1, v4}, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment;->a(Landroid/view/View;Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;)V

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_0
    const v0, 0x7f0f0320

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 82
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment;->a()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 85
    return-object v1
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onDetach()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment;->a:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$a;

    .line 92
    return-void
.end method
