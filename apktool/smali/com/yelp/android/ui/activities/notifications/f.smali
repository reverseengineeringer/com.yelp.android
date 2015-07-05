.class public Lcom/yelp/android/ui/activities/notifications/f;
.super Ljava/lang/Object;
.source "AlertViewHolder.java"


# instance fields
.field public final a:Landroid/widget/Button;

.field public final b:Lcom/yelp/android/ui/widgets/WebImageView;

.field public final c:Landroid/view/View;

.field private final d:Lcom/yelp/android/ui/widgets/WebImageView;

.field private final e:Lcom/yelp/android/ui/util/InstrumentableTextView;

.field private final f:Landroid/widget/TextView;

.field private final g:Landroid/widget/TextView;

.field private final h:Landroid/widget/ImageView;

.field private final i:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const v0, 0x7f0c02ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/f;->a:Landroid/widget/Button;

    .line 36
    const v0, 0x7f0c02ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/f;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 37
    const v0, 0x7f0c00c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/f;->d:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 38
    const v0, 0x7f0c0084

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/InstrumentableTextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/f;->e:Lcom/yelp/android/ui/util/InstrumentableTextView;

    .line 39
    const v0, 0x7f0c0132

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/f;->f:Landroid/widget/TextView;

    .line 40
    const v0, 0x7f0c02eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/f;->g:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f0c0083

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/f;->h:Landroid/widget/ImageView;

    .line 42
    const v0, 0x7f0c02ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/f;->c:Landroid/view/View;

    .line 43
    const v0, 0x7f0c04d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/f;->i:Landroid/view/View;

    .line 44
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/Alert;)V
    .locals 10

    .prologue
    const v9, 0x3dcccccd    # 0.1f

    const/4 v8, 0x0

    const/high16 v7, -0x40400000    # -1.5f

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 47
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/f;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 48
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Alert;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/f;->d:Lcom/yelp/android/ui/widgets/WebImageView;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 60
    :goto_0
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Alert;->getFormattedTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 61
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Alert;->getFormattedText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 62
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 63
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/f;->e:Lcom/yelp/android/ui/util/InstrumentableTextView;

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/util/InstrumentableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/f;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    :goto_1
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Alert;->getTimeModified()Ljava/util/Date;

    move-result-object v0

    .line 76
    if-nez v0, :cond_4

    .line 77
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/f;->g:Landroid/widget/TextView;

    const-string/jumbo v4, ""

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :goto_2
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Alert;->getAlertType()Lcom/yelp/android/serializable/AlertType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/AlertType;->getIconResource()I

    move-result v0

    .line 83
    if-lez v0, :cond_5

    .line 84
    iget-object v4, p0, Lcom/yelp/android/ui/activities/notifications/f;->h:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/f;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    :goto_3
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Alert;->getPhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 91
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/f;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Alert;->getPhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/serializable/Photo;->getLargeUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/f;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    :goto_4
    iget-object v4, p0, Lcom/yelp/android/ui/activities/notifications/f;->i:Landroid/view/View;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Alert;->getAlertType()Lcom/yelp/android/serializable/AlertType;

    move-result-object v0

    sget-object v5, Lcom/yelp/android/serializable/AlertType;->VIDEO_FEEDBACK:Lcom/yelp/android/serializable/AlertType;

    if-ne v0, v5, :cond_8

    move v0, v1

    :goto_5
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 103
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Alert;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 104
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/f;->a:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 124
    :goto_6
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/f;->d:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Alert;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/f;->d:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 53
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Alert;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Alert;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "bundle://"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/f;->d:Lcom/yelp/android/ui/widgets/WebImageView;

    sget-object v4, Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;->NONE:Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/widgets/WebImageView;->setForceMode(Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;)V

    goto/16 :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/f;->d:Lcom/yelp/android/ui/widgets/WebImageView;

    sget-object v4, Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;->DEFAULT:Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/widgets/WebImageView;->setForceMode(Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;)V

    goto/16 :goto_0

    .line 66
    :cond_2
    iget-object v5, p0, Lcom/yelp/android/ui/activities/notifications/f;->e:Lcom/yelp/android/ui/util/InstrumentableTextView;

    invoke-virtual {v5, v0}, Lcom/yelp/android/ui/util/InstrumentableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/f;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 70
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/f;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/f;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 79
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/f;->g:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/notifications/f;->g:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/yelp/android/util/StringUtils$Format;->ABBREVIATED:Lcom/yelp/android/util/StringUtils$Format;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Alert;->getTimeModified()Ljava/util/Date;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 87
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/f;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 93
    :cond_6
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Alert;->getVideo()Lcom/yelp/android/serializable/Video;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 94
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/f;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Alert;->getVideo()Lcom/yelp/android/serializable/Video;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/serializable/Video;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/f;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 97
    :cond_7
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/f;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_8
    move v0, v2

    .line 100
    goto/16 :goto_5

    .line 108
    :cond_9
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Alert;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/AlertAction;

    .line 109
    iget-object v2, p0, Lcom/yelp/android/ui/activities/notifications/f;->a:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 110
    iget-object v2, p0, Lcom/yelp/android/ui/activities/notifications/f;->a:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/AlertAction;->isDisabled()Z

    move-result v4

    if-nez v4, :cond_a

    const/4 v1, 0x1

    :cond_a
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 111
    invoke-virtual {v0}, Lcom/yelp/android/serializable/AlertAction;->getPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    .line 112
    iget-object v1, p0, Lcom/yelp/android/ui/activities/notifications/f;->a:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/AlertAction;->getActedLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :goto_7
    invoke-virtual {v0}, Lcom/yelp/android/serializable/AlertAction;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 117
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/f;->a:Landroid/widget/Button;

    const v1, 0x7f0a00e2

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v9, v8, v7, v1}, Landroid/widget/Button;->setShadowLayer(FFFI)V

    goto/16 :goto_6

    .line 114
    :cond_b
    iget-object v1, p0, Lcom/yelp/android/ui/activities/notifications/f;->a:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/AlertAction;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 120
    :cond_c
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/f;->a:Landroid/widget/Button;

    const v1, 0x7f0a00e1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v9, v8, v7, v1}, Landroid/widget/Button;->setShadowLayer(FFFI)V

    goto/16 :goto_6
.end method
