.class public Lcom/ooyala/android/OoyalaException;
.super Ljava/lang/Exception;
.source "OoyalaException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _code:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;


# direct methods
.method public constructor <init>(Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/ooyala/android/OoyalaException;->_code:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/ooyala/android/OoyalaException;->_code:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    iput-object p1, p0, Lcom/ooyala/android/OoyalaException;->_code:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 47
    iput-object p1, p0, Lcom/ooyala/android/OoyalaException;->_code:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    .line 48
    return-void
.end method


# virtual methods
.method public getCode()Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ooyala/android/OoyalaException;->_code:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    return-object v0
.end method
