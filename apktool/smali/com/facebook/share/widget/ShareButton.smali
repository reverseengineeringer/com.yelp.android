.class public final Lcom/facebook/share/widget/ShareButton;
.super Lcom/facebook/share/widget/c;
.source "ShareButton.java"


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Share:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    sput v0, Lcom/facebook/share/widget/ShareButton;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    .line 44
    const/4 v3, 0x0

    const-string/jumbo v4, "fb_share_button_create"

    sget v5, Lcom/facebook/share/widget/ShareButton;->a:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/share/widget/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    .line 48
    const-string/jumbo v4, "fb_share_button_create"

    sget v5, Lcom/facebook/share/widget/ShareButton;->a:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/share/widget/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;I)V

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/facebook/share/widget/ShareButton;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/facebook/share/widget/ShareButton;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/share/widget/ShareButton;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/ShareButton;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected getDefaultStyleResource()I
    .locals 1

    .prologue
    .line 58
    sget v0, Lcom/facebook/o$g;->com_facebook_button_share:I

    return v0
.end method

.method protected getShareOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/facebook/share/widget/ShareButton$1;

    invoke-direct {v0, p0}, Lcom/facebook/share/widget/ShareButton$1;-><init>(Lcom/facebook/share/widget/ShareButton;)V

    return-object v0
.end method
