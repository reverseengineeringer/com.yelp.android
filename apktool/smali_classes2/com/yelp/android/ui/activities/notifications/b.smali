.class public Lcom/yelp/android/ui/activities/notifications/b;
.super Ljava/lang/Object;
.source "AlertViewHolder.java"


# instance fields
.field public final a:Landroid/widget/Button;

.field public final b:Landroid/widget/Button;

.field public final c:Lcom/yelp/android/ui/widgets/WebImageView;

.field public final d:Landroid/view/View;

.field private final e:Lcom/yelp/android/ui/widgets/WebImageView;

.field private final f:Lcom/yelp/android/ui/util/InstrumentableTextView;

.field private final g:Landroid/widget/TextView;

.field private final h:Landroid/widget/TextView;

.field private final i:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const v0, 0x7f0f0364

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/b;->a:Landroid/widget/Button;

    .line 35
    const v0, 0x7f0f0363

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/b;->b:Landroid/widget/Button;

    .line 36
    const v0, 0x7f0f0362

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/b;->c:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 37
    const v0, 0x7f0f0113

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/b;->e:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 38
    const v0, 0x7f0f00a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/InstrumentableTextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/b;->f:Lcom/yelp/android/ui/util/InstrumentableTextView;

    .line 39
    const v0, 0x7f0f0174

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/b;->g:Landroid/widget/TextView;

    .line 40
    const v0, 0x7f0f0360

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/b;->h:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f0f0361

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/b;->d:Landroid/view/View;

    .line 42
    const v0, 0x7f0f05d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/b;->i:Landroid/view/View;

    .line 43
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/Alert;)V
    .locals 10

    .prologue
    const v9, 0x7f0e0169

    const v8, 0x7f0e00af

    const/4 v3, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 46
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/b;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 47
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Alert;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/b;->e:Lcom/yelp/android/ui/widgets/WebImageView;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 59
    :goto_0
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Alert;->a()Ljava/lang/CharSequence;

    move-result-object v0

    .line 60
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Alert;->b()Ljava/lang/CharSequence;

    move-result-object v4

    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/b;->f:Lcom/yelp/android/ui/util/InstrumentableTextView;

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/util/InstrumentableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/b;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    :goto_1
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Alert;->j()Ljava/util/Date;

    move-result-object v0

    .line 75
    if-nez v0, :cond_5

    .line 76
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/b;->h:Landroid/widget/TextView;

    const-string/jumbo v4, ""

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :goto_2
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Alert;->h()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 83
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/b;->c:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Alert;->h()Lcom/yelp/android/serializable/Photo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/serializable/Photo;->s()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/b;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    :goto_3
    iget-object v4, p0, Lcom/yelp/android/ui/activities/notifications/b;->i:Landroid/view/View;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Alert;->c()Lcom/yelp/android/serializable/AlertType;

    move-result-object v0

    sget-object v6, Lcom/yelp/android/serializable/AlertType;->VIDEO_FEEDBACK:Lcom/yelp/android/serializable/AlertType;

    if-ne v0, v6, :cond_8

    move v0, v1

    :goto_4
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/b;->a:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/b;->b:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 98
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Alert;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 113
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Alert;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/AlertAction;

    .line 114
    iget-object v4, p0, Lcom/yelp/android/ui/activities/notifications/b;->b:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 115
    iget-object v6, p0, Lcom/yelp/android/ui/activities/notifications/b;->b:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/AlertAction;->a()Z

    move-result v4

    if-nez v4, :cond_c

    move v4, v3

    :goto_5
    invoke-virtual {v6, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 116
    iget-object v6, p0, Lcom/yelp/android/ui/activities/notifications/b;->b:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/AlertAction;->a()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v0}, Lcom/yelp/android/serializable/AlertAction;->c()Ljava/lang/String;

    move-result-object v4

    :goto_6
    invoke-virtual {v6, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {v0}, Lcom/yelp/android/serializable/AlertAction;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/b;->b:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 126
    :cond_0
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Alert;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/AlertAction;

    .line 127
    iget-object v2, p0, Lcom/yelp/android/ui/activities/notifications/b;->a:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 128
    iget-object v2, p0, Lcom/yelp/android/ui/activities/notifications/b;->a:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/AlertAction;->a()Z

    move-result v4

    if-nez v4, :cond_e

    :goto_7
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 129
    iget-object v2, p0, Lcom/yelp/android/ui/activities/notifications/b;->a:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/AlertAction;->a()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lcom/yelp/android/serializable/AlertAction;->c()Ljava/lang/String;

    move-result-object v1

    :goto_8
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v1, p0, Lcom/yelp/android/ui/activities/notifications/b;->a:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/AlertAction;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_9
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 138
    :goto_a
    :pswitch_0
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/b;->e:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Alert;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/b;->e:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 52
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Alert;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Alert;->f()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "bundle://"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/b;->e:Lcom/yelp/android/ui/widgets/WebImageView;

    sget-object v4, Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;->NONE:Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/widgets/WebImageView;->setForceMode(Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;)V

    goto/16 :goto_0

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/b;->e:Lcom/yelp/android/ui/widgets/WebImageView;

    sget-object v4, Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;->DEFAULT:Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/widgets/WebImageView;->setForceMode(Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;)V

    goto/16 :goto_0

    .line 65
    :cond_3
    iget-object v6, p0, Lcom/yelp/android/ui/activities/notifications/b;->f:Lcom/yelp/android/ui/util/InstrumentableTextView;

    invoke-virtual {v6, v0}, Lcom/yelp/android/ui/util/InstrumentableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/b;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 69
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/b;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/b;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 78
    :cond_5
    iget-object v4, p0, Lcom/yelp/android/ui/activities/notifications/b;->h:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/yelp/android/ui/activities/notifications/b;->h:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/yelp/android/util/StringUtils$Format;->LONG:Lcom/yelp/android/util/StringUtils$Format;

    invoke-static {v6, v7, v0}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 85
    :cond_6
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Alert;->d()Lcom/yelp/android/serializable/Video;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 86
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/b;->c:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Alert;->d()Lcom/yelp/android/serializable/Video;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/serializable/Video;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/b;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 89
    :cond_7
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/b;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_8
    move v0, v2

    .line 92
    goto/16 :goto_4

    .line 100
    :pswitch_1
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Alert;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/AlertAction;

    .line 101
    iget-object v2, p0, Lcom/yelp/android/ui/activities/notifications/b;->a:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 102
    iget-object v2, p0, Lcom/yelp/android/ui/activities/notifications/b;->a:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/AlertAction;->a()Z

    move-result v4

    if-nez v4, :cond_9

    move v1, v3

    :cond_9
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 103
    iget-object v2, p0, Lcom/yelp/android/ui/activities/notifications/b;->a:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/AlertAction;->a()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/yelp/android/serializable/AlertAction;->c()Ljava/lang/String;

    move-result-object v1

    :goto_b
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v1, p0, Lcom/yelp/android/ui/activities/notifications/b;->a:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/AlertAction;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_c
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_a

    .line 103
    :cond_a
    invoke-virtual {v0}, Lcom/yelp/android/serializable/AlertAction;->e()Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    .line 105
    :cond_b
    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_c

    :cond_c
    move v4, v1

    .line 115
    goto/16 :goto_5

    .line 116
    :cond_d
    invoke-virtual {v0}, Lcom/yelp/android/serializable/AlertAction;->e()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    :cond_e
    move v3, v1

    .line 128
    goto/16 :goto_7

    .line 129
    :cond_f
    invoke-virtual {v0}, Lcom/yelp/android/serializable/AlertAction;->e()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_8

    .line 132
    :cond_10
    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto/16 :goto_9

    .line 98
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
