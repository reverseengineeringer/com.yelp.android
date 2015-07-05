.class public Lcom/yelp/android/ui/dialogs/v;
.super Landroid/app/Dialog;
.source "DlgErrorScroll.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Z)V
    .locals 3

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object p2, p0, Lcom/yelp/android/ui/dialogs/v;->a:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/yelp/android/ui/dialogs/v;->b:Ljava/lang/String;

    .line 35
    if-eqz p4, :cond_0

    .line 36
    invoke-static {p4}, Lcom/yelp/android/ui/util/cp;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/v;->c:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/v;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/v;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/v;->b:Ljava/lang/String;

    .line 40
    :cond_0
    if-eqz p5, :cond_1

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/v;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n\n===================\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/v;->b:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x7d0

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 43
    invoke-static {p1, v0}, Lcom/yelp/android/ui/util/cp;->a(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/v;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/v;->b:Ljava/lang/String;

    .line 46
    :cond_1
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/v;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 79
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/v;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 80
    const-string/jumbo v0, "Text copied to clipboard!"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cr;->a(Ljava/lang/CharSequence;I)V

    .line 81
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/v;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/v;->a()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f030030

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/dialogs/v;->setContentView(I)V

    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/v;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/dialogs/v;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    const v0, 0x7f0c0142

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/dialogs/v;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 56
    invoke-static {v0}, Lcom/yelp/android/ui/util/cp;->a(Landroid/widget/LinearLayout;)V

    .line 58
    const v0, 0x7f0c0143

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/dialogs/v;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/v;->d:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/v;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/v;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    const v0, 0x7f0c0144

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/dialogs/v;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 62
    new-instance v1, Lcom/yelp/android/ui/dialogs/w;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/dialogs/w;-><init>(Lcom/yelp/android/ui/dialogs/v;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const v0, 0x7f0c0145

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/dialogs/v;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 69
    new-instance v1, Lcom/yelp/android/ui/dialogs/x;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/dialogs/x;-><init>(Lcom/yelp/android/ui/dialogs/v;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method
