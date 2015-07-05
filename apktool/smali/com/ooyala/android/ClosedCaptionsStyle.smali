.class public Lcom/ooyala/android/ClosedCaptionsStyle;
.super Ljava/lang/Object;
.source "ClosedCaptionsStyle.java"


# instance fields
.field private backgroundColor:I

.field private bottomMargin:I

.field private color:I

.field private font:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(IILandroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/ooyala/android/ClosedCaptionsStyle;->color:I

    .line 13
    iput p2, p0, Lcom/ooyala/android/ClosedCaptionsStyle;->backgroundColor:I

    .line 14
    iput-object p3, p0, Lcom/ooyala/android/ClosedCaptionsStyle;->font:Landroid/graphics/Typeface;

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/ooyala/android/ClosedCaptionsStyle;->bottomMargin:I

    .line 16
    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/ooyala/android/ClosedCaptionsStyle;->backgroundColor:I

    return v0
.end method

.method public getBottomMargin()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/ooyala/android/ClosedCaptionsStyle;->bottomMargin:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/ooyala/android/ClosedCaptionsStyle;->color:I

    return v0
.end method

.method public getFont()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ooyala/android/ClosedCaptionsStyle;->font:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcom/ooyala/android/ClosedCaptionsStyle;->backgroundColor:I

    .line 32
    return-void
.end method

.method public setBottomMargin(I)V
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/ooyala/android/ClosedCaptionsStyle;->bottomMargin:I

    .line 40
    return-void
.end method

.method public setColor(I)V
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/ooyala/android/ClosedCaptionsStyle;->color:I

    .line 24
    return-void
.end method

.method public setFont(Landroid/graphics/Typeface;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/ooyala/android/ClosedCaptionsStyle;->font:Landroid/graphics/Typeface;

    .line 48
    return-void
.end method
