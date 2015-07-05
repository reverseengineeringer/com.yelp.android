.class synthetic Lcom/ooyala/android/DynamicChannel$1;
.super Ljava/lang/Object;
.source "DynamicChannel.java"


# static fields
.field static final synthetic $SwitchMap$com$ooyala$android$Constants$ReturnState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    invoke-static {}, Lcom/ooyala/android/Constants$ReturnState;->values()[Lcom/ooyala/android/Constants$ReturnState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ooyala/android/DynamicChannel$1;->$SwitchMap$com$ooyala$android$Constants$ReturnState:[I

    :try_start_0
    sget-object v0, Lcom/ooyala/android/DynamicChannel$1;->$SwitchMap$com$ooyala$android$Constants$ReturnState:[I

    sget-object v1, Lcom/ooyala/android/Constants$ReturnState;->STATE_FAIL:Lcom/ooyala/android/Constants$ReturnState;

    invoke-virtual {v1}, Lcom/ooyala/android/Constants$ReturnState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
