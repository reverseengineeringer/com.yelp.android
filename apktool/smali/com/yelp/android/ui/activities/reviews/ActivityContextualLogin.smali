.class public Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityContextualLogin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$4;,
        Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/view/View$OnClickListener;

.field private g:Landroid/view/View$OnClickListener;

.field private h:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 159
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$1;-><init>(Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->f:Landroid/view/View$OnClickListener;

    .line 171
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$2;-><init>(Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->g:Landroid/view/View$OnClickListener;

    .line 183
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$3;-><init>(Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->h:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 52
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    const-string/jumbo v1, "event_type"

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;->CHECK_IN:Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 54
    return-object v0
.end method

.method public static a(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    const-string/jumbo v1, "stars_rating"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 47
    const-string/jumbo v1, "event_type"

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;->REVIEW:Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 48
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    const-string/jumbo v1, "event_type"

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;->BOOKMARK:Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 66
    const-string/jumbo v1, "business_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    return-object v0
.end method

.method private a()Ljava/lang/String;
    .locals 5

    .prologue
    .line 196
    const v0, 0x7f0705f5

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "business_name"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 58
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    const-string/jumbo v1, "event_type"

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;->ADD_PHOTO:Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 60
    return-object v0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->LoginContext:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 139
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 147
    const/16 v0, 0x3f8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x418

    if-ne p1, v0, :cond_1

    :cond_0
    if-ne p2, v1, :cond_1

    .line 149
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->setResult(I)V

    .line 150
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->finish()V

    .line 152
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const v2, 0x7f020229

    .line 72
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v0, 0x7f03002e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->setContentView(I)V

    .line 76
    const v0, 0x7f0f0150

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->c:Landroid/widget/Button;

    .line 77
    const v0, 0x7f0f0151

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->d:Landroid/widget/Button;

    .line 78
    const v0, 0x7f0f014f

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->e:Landroid/widget/Button;

    .line 80
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->d:Landroid/widget/Button;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v0, 0x7f0f014d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->a:Landroid/widget/ImageView;

    .line 85
    const v0, 0x7f0f014e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->b:Landroid/widget/TextView;

    .line 88
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "event_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;

    .line 90
    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ActivityContextualLogin.java resulted in unknown eventType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$4;->a:[I

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 132
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ActivityContextualLogin.java resulted in unknown eventType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->b:Landroid/widget/TextView;

    const v1, 0x7f070507

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 98
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "stars_rating"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 99
    packed-switch v0, :pswitch_data_1

    .line 115
    :pswitch_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->a:Landroid/widget/ImageView;

    const v1, 0x7f02051b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    :goto_0
    return-void

    .line 101
    :pswitch_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->a:Landroid/widget/ImageView;

    const v1, 0x7f020518

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 104
    :pswitch_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->a:Landroid/widget/ImageView;

    const v1, 0x7f020519

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 107
    :pswitch_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->a:Landroid/widget/ImageView;

    const v1, 0x7f02051a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 110
    :pswitch_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->a:Landroid/widget/ImageView;

    const v1, 0x7f02051c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 120
    :pswitch_6
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->b:Landroid/widget/TextView;

    const v1, 0x7f070580

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 121
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 124
    :pswitch_7
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 128
    :pswitch_8
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->b:Landroid/widget/TextView;

    const v1, 0x7f070581

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 129
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 99
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method
