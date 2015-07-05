.class public Lcom/yelp/android/ui/dialogs/bl;
.super Ljava/lang/Object;
.source "YelpDialogBuilder.java"


# instance fields
.field private a:Landroid/app/AlertDialog$Builder;

.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/view/View;

.field private l:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/bl;->a:Landroid/app/AlertDialog$Builder;

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 40
    sget v1, Lcom/yelp/android/bf/i;->yelp_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 42
    sget v0, Lcom/yelp/android/bf/g;->content:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/bl;->b:Landroid/view/ViewGroup;

    .line 43
    sget v0, Lcom/yelp/android/bf/g;->title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/bl;->c:Landroid/widget/TextView;

    .line 44
    sget v0, Lcom/yelp/android/bf/g;->positive:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/bl;->d:Landroid/widget/Button;

    .line 45
    sget v0, Lcom/yelp/android/bf/g;->negative:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/bl;->e:Landroid/widget/Button;

    .line 46
    sget v0, Lcom/yelp/android/bf/g;->button_top_border:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/bl;->f:Landroid/view/View;

    .line 47
    sget v0, Lcom/yelp/android/bf/g;->button_divider:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/bl;->g:Landroid/view/View;

    .line 48
    sget v0, Lcom/yelp/android/bf/g;->buttons:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/bl;->h:Landroid/view/View;

    .line 49
    sget v0, Lcom/yelp/android/bf/g;->message:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/bl;->j:Landroid/widget/TextView;

    .line 50
    sget v0, Lcom/yelp/android/bf/g;->message_scroll:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/bl;->k:Landroid/view/View;

    .line 51
    sget v0, Lcom/yelp/android/bf/g;->divider:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/bl;->i:Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/bl;->a:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/bl;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/bl;->l:Landroid/app/Dialog;

    return-object v0
.end method

.method private a(Landroid/widget/Button;IILandroid/view/View$OnClickListener;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 99
    new-instance v0, Lcom/yelp/android/ui/dialogs/bm;

    invoke-direct {v0, p0, p4}, Lcom/yelp/android/ui/dialogs/bm;-><init>(Lcom/yelp/android/ui/dialogs/bl;Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/bl;->f:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 112
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/bl;->h:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 114
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 115
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-virtual {p1, p3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 117
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/bl;->e:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/bl;->d:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/bl;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 124
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/bl;->a:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/bl;->l:Landroid/app/Dialog;

    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/bl;->l:Landroid/app/Dialog;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/bl;->a:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/dialogs/bl;->a(Ljava/lang/CharSequence;)V

    .line 67
    return-void
.end method

.method public a(ILandroid/view/View$OnClickListener;)V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/bl;->d:Landroid/widget/Button;

    sget v1, Lcom/yelp/android/bf/f;->yelp_dialog_button:I

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/yelp/android/ui/dialogs/bl;->a(Landroid/widget/Button;IILandroid/view/View$OnClickListener;)V

    .line 82
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/bl;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 57
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/bl;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 58
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/bl;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/bl;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/bl;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    return-void
.end method

.method public b(ILandroid/view/View$OnClickListener;)V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/bl;->e:Landroid/widget/Button;

    sget v1, Lcom/yelp/android/bf/f;->yelp_dialog_button:I

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/yelp/android/ui/dialogs/bl;->a(Landroid/widget/Button;IILandroid/view/View$OnClickListener;)V

    .line 90
    return-void
.end method
